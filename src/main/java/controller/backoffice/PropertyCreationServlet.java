package controller.backoffice;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Files;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.UUID;

import org.apache.commons.io.FilenameUtils;
import org.apache.tika.Tika;
import org.apache.tomcat.jakartaee.commons.compress.utils.FileNameUtils;

import Beans.Image;
import Beans.Immobiliers;
import Beans.User;
import DAOs.ImmobiliersDAO.ImmobiliersDAOImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

@WebServlet("/agent/property/add")
@MultipartConfig(
		fileSizeThreshold = 1024*1024*2,
		maxFileSize = 1024*1024*10,
		maxRequestSize = 1024*1024*50
		)
public class PropertyCreationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	public PropertyCreationServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		User user = null;
		HttpSession session = request.getSession();
		if (session == null || session.getAttribute("user") == null) {
		    response.sendRedirect(request.getContextPath()+"/login");
		} else {
		    user = (User) session.getAttribute("user");
		    System.out.println(user);
		}
		if (user != null) {
			request.getRequestDispatcher("/view/back_office/createProperty.jsp").forward(request, response);
			return;
		}else {
			response.sendRedirect(request.getContextPath()+"/login");
			return;
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		User user = null;
		HttpSession session = request.getSession();
		if (session == null || session.getAttribute("user") == null) {
		    response.sendRedirect(request.getContextPath()+"/login");
		} else {
		    user = (User) session.getAttribute("user");
		    System.out.println(user);
		}
		Image img = null;
		List<Image> images = new ArrayList<Image>();
		if (user != null) {
			try {
				Collection<Part> parts = request.getParts();
				// Create a Tika instance
				Tika tika = new Tika();

				for (Part part : parts) {
				    String fileName = part.getSubmittedFileName();
				    String fileExtension = null;
				    if (fileName != null) {
				        fileExtension = "." + FilenameUtils.getExtension(fileName);
				    }
				    if (fileExtension != null && fileExtension.matches("(?i)\\.png|\\.jpg|\\.jpeg|\\.gif|\\.bmp")) {
				        InputStream fileContent = part.getInputStream();

				        // Use Tika to detect the file type from the file contents
				        String fileType = tika.detect(fileContent);
				        System.out.println(fileType);
				        // Check if the detected file type is one of the supported image types
				        if (fileType != null && fileType.startsWith("image/")) {
				        	
				            // Reset the stream position to the beginning
				            fileContent.reset();

				            // Create a folder to store the images if it doesn't exist
				            String uploadPath = getServletContext().getRealPath("/") + "uploads/";
				            File uploadDir = new File(uploadPath);
				            if (!uploadDir.exists()) {
				                uploadDir.mkdir();
				            }

				            // Generate a unique file name and write the image content to a file in the folder
				            String uuid = UUID.randomUUID().toString();
				            String filePath = uploadPath + uuid + fileExtension;
				            try (OutputStream out = new FileOutputStream(new File(filePath))) {
				                byte[] buffer = new byte[1024];
				                int bytesRead;
				                while ((bytesRead = fileContent.read(buffer)) != -1) {
				                    out.write(buffer, 0, bytesRead);
				                }
				            }

				            // Insert the path of the image file into the database
				            img = new Image();
							img.setPath(filePath);
							images.add(img);
							System.out.println(img.getPath() + "imgggggggggg");
				        }
				    }
				}
//				
				new ImmobiliersDAOImpl()
					.addImmobilier(new Immobiliers(
									null, 
									new java.util.Scanner(request.getPart("title").getInputStream()).nextLine(), 
									new java.util.Scanner(request.getPart("adresse").getInputStream()).nextLine(), 
									"Morocco", 
									new java.util.Scanner(request.getPart("city").getInputStream()).nextLine(), 
									Integer.parseInt(new java.util.Scanner(request.getPart("surface").getInputStream()).nextLine()), 
									Integer.parseInt(new java.util.Scanner(request.getPart("bathrooms").getInputStream()).nextLine()), 
									Integer.parseInt(new java.util.Scanner(request.getPart("floors").getInputStream()).nextLine()), 
									new java.util.Scanner(request.getPart("property_type").getInputStream()).nextLine(), 
									new java.util.Scanner(request.getPart("description").getInputStream()).nextLine(), 
									Double.parseDouble(new java.util.Scanner(request.getPart("price").getInputStream()).nextLine()), 
									true, 
									user, 
									new java.util.Scanner(request.getPart("operation_type").getInputStream()).nextLine(), 
									images, 
									Integer.parseInt(new java.util.Scanner(request.getPart("bedrooms").getInputStream()).nextLine()), 
									LocalDateTime.now().toString(), 
									LocalDateTime.now().toString(), 
									null));
									response.sendRedirect(request.getContextPath()+"/agent");
									return;

			} catch (Exception e) {
				// Handle any errors that occur during the file upload
				e.printStackTrace();
			}
		}else {
			response.sendRedirect("/login");
			return;
			
		}
	}

	/**
	 * @see HttpServlet#doPut(HttpServletRequest, HttpServletResponse)
	 */
	protected void doPut(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doDelete(HttpServletRequest, HttpServletResponse)
	 */
	protected void doDelete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
