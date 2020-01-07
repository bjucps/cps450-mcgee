package cps450;

import java.net.URL;

import org.stringtemplate.v4.STGroupFile;

public class CustomSTGroupFile extends STGroupFile {

  public CustomSTGroupFile(String fileName) {
    super(fileName);
  }

  public CustomSTGroupFile(String fullyQualifiedFileName, String encoding) {
    super(fullyQualifiedFileName, encoding);
  }

  public CustomSTGroupFile(String fileName, char delimiterStartChar,
      char delimiterStopChar) {
    super(fileName, delimiterStartChar, delimiterStopChar);
  }

  public CustomSTGroupFile(String fullyQualifiedFileName, String encoding,
      char delimiterStartChar, char delimiterStopChar) {
    super(fullyQualifiedFileName, encoding, delimiterStartChar,
        delimiterStopChar);
  }

  public CustomSTGroupFile(URL url, String encoding, char delimiterStartChar,
      char delimiterStopChar) {
    super(url, encoding, delimiterStartChar, delimiterStopChar);
  }

  @Override
  public URL getURL(String fileName) {
    return this.getClass().getResource(fileName);
  }
  
  
}
