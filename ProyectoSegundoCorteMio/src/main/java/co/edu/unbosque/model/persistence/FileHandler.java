package co.edu.unbosque.model.persistence;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.PrintWriter;
import java.util.Scanner;

public class FileHandler {
	private static File file;
	private static Scanner reader;
	private static PrintWriter writer;
	
	
	public static String loadFile(String filename) {
	    file = new File(System.getProperty("user.dir") + "/src/main/java/co/edu/unbosque/model/persistence/" + filename);
	    if (!file.exists()) {
	        try {
	            file.createNewFile();
	        } catch (IOException e) {
	            System.out.println("can´t create new file");
	            System.out.println(e.getMessage());
	        }
	    }
	    String content = "";
	    try {
	        reader = new Scanner(file);
	        while (reader.hasNextLine()) {
	            content += reader.nextLine() + "\n";
	        }
	    } catch (FileNotFoundException e) {
	        System.out.println("file don´t exists");
	        e.printStackTrace();
	    }
	    reader.close();
	    return content;
	}

	public static void writeFile(String filename, String content) {
		file = new File(System.getProperty("user.dir") + "/src/main/java/co/edu/unbosque/model/persistence/" + filename);
		if (!file.exists()) {
			try {
				file.createNewFile();
			} catch (IOException e) {
				System.out.println("can´t create new file");
				System.out.println(e.getMessage());
			}
		}
		try {
			writer = new PrintWriter(file);
			writer.print(content);
			System.out.println(content);
		} catch (FileNotFoundException e) {
			System.out.println("file don´t exists");
			e.printStackTrace();
		}
		writer.close();
	}
}
