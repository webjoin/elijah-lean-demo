package com.viewt.beacon.common.html2pdf;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.itextpdf.html2pdf.HtmlConverter;
import org.apache.velocity.VelocityContext;
import org.apache.velocity.app.Velocity;

import java.io.IOException;
import java.io.OutputStream;
import java.io.StringWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Map;

/**
 * @author elijah
 */
public class Html2pdf {
    private static final ObjectMapper objectMapper = new ObjectMapper();

    public static void main(String[] args) {
        validate(args);
        String htmlTmplatePath = args[0];
        String dataPath = args[1];
        Path htmlPath = Paths.get(htmlTmplatePath);
        Path pdfPath = getPdfPath(htmlPath);

        System.out.printf("we are merging the template file(%s) and the data file%s", htmlTmplatePath, pdfPath);

        String templateContent = getTemplateContent(htmlPath);


        String htmlWithData = buildDataHtml(templateContent, dataPath);


        try (OutputStream fileOutputStream = Files.newOutputStream(pdfPath)) {
            HtmlConverter.convertToPdf(htmlWithData, fileOutputStream);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static String buildDataHtml(String templateContent, String dataPath) {
        StringWriter stringWriter = new StringWriter();
        Velocity.evaluate(buildVelocityContext(dataPath), stringWriter, "velocity", templateContent);

        return stringWriter.toString();
    }

    private static VelocityContext buildVelocityContext(String dataPath) {

        try {
            VelocityContext context = new VelocityContext();
            Map<String, Object> dataMap = objectMapper.readValue(Paths.get(dataPath).toFile(), new TypeReference<Map<String, Object>>() {
            });
            dataMap.forEach(context::put);
            return context;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }


    }

    private static void validate(String[] args) {
        String htmlTmplatePath = args[0];
        if (htmlTmplatePath == null || htmlTmplatePath.isEmpty()) {
            System.err.println("plz use start.sh script");
            System.exit(1);
        }
        if (!Files.exists(Paths.get(htmlTmplatePath))) {
            System.err.printf("%s is not found\n", htmlTmplatePath);
            System.exit(1);
        }
        String dataPath = args[1];
        if (dataPath == null || dataPath.isEmpty()) {
            System.err.println("plz use start.sh script");
            System.exit(1);
        }
        if (!Files.exists(Paths.get(dataPath))) {
            System.err.printf("%s is not found\n", dataPath);
            System.exit(1);
        }
    }

    private static Path getPdfPath(Path templatePath) {
        Path parent = templatePath.getParent();
        String fileName = templatePath.getFileName().toString();
        try {
            return Files.createTempFile(parent, fileName, ".pdf");
        } catch (IOException e) {
            throw new RuntimeException("created a pdf error", e);
        }
    }

    /**
     * you can cache the file content
     */
    private static String getTemplateContent(Path path) {
        try {
            return String.join("", Files.readAllLines(path));
        } catch (IOException e) {
            throw new RuntimeException("fetch the file content error", e);
        }
    }

}
