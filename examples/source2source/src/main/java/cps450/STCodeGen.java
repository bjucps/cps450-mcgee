package cps450;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

import org.antlr.v4.runtime.tree.ParseTree;
import org.stringtemplate.v4.ST;
import org.stringtemplate.v4.STErrorListener;
import org.stringtemplate.v4.STGroup;
import org.stringtemplate.v4.misc.STMessage;

public class STCodeGen implements STErrorListener {
	protected final STGroup templateGroup;

	public STCodeGen() {

		templateGroup = new CustomSTGroupFile("/cps450/python.stg");
		templateGroup.setListener(this); // so we can see errors in the template

	}

	public String process(ParseTree tree) {

		ST templ = getTemplate("program");
		templ.add("prog", tree); // set prog parameter for program template
		return templ.render();
	}

	public ST getTemplate(String name) {
		return templateGroup.getInstanceOf(name);
	}

	public void output(String result) throws IOException {

		File file = new File("result.py");

		try (FileWriter fw = new FileWriter(file)) {
			fw.append(result);
		}
	}
	
	// The following methods report errors in the template

	@Override
	public void IOError(STMessage msg) {
		System.err.println(msg);

	}

	@Override
	public void compileTimeError(STMessage msg) {
		System.err.println(msg);

	}

	@Override
	public void internalError(STMessage msg) {
		System.err.println(msg);

	}

	@Override
	public void runTimeError(STMessage msg) {
		System.err.println(msg);
	}
}
