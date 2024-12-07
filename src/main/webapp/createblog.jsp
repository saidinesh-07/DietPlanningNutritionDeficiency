<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@include file="nutritionistnavbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>createblog</title>
</head>
<body>

    <main class="container mt-5">
        <h2 class="text-center">Create Blog</h2>
        <form action="submitblog" method="post" class="mt-4">
            <div class="form-group">
                <label for="title">Blog Title</label>
                <input type="text" class="form-control" id="title" name="title" placeholder="Enter blog title" required>
            </div>

            <div class="form-group">
                <label for="category">Category</label>
                <select class="form-control" id="category" name="category" required>
                    <option value="">Select Category</option>
                    <option value="Child Nutrition">Child Nutrition</option>
                    <option value="Adolescent Nutrition">Adolescent Nutrition</option>
                    <option value="Sports Nutrition">Sports Nutrition</option>
                    <option value="General Health">General Health</option>
                    <option value="Diet Tips">Diet Tips</option>
                </select>
            </div>

            <div class="form-group">
                <label for="content">Blog Content</label>
                <textarea class="form-control" id="content" name="content" placeholder="Write your blog content here..." rows="10" required></textarea>
            </div>

            <div class="form-group">
                <label for="tags">Tags (optional)</label>
                <input type="text" class="form-control" id="tags" name="tags" placeholder="Add tags separated by commas (e.g., nutrition, health)">
            </div>
            
                        
            <div class="form-group">
                <label for="pdfUpload">Upload PDF (optional)</label>
                <input type="file" class="form-control" id="pdfUpload" name="pdfUpload" accept="application/pdf">
            </div>

            <button type="submit" class="btn btn-primary btn-lg btn-block">Publish Blog</button>
        </form>
    </main>

    <footer class="bg-dark text-white py-4 mt-5 text-center">
        <p>&copy; 2024 Nutrition Management. All Rights Reserved.</p>
    </footer>


</body>
</html>