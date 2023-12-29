$(document).ready(function () {
    $(".dropdown").click(function () {
        $(this).parent().find(".sub-menu").toggle();
    });

    $(".sub-item").click(function () {
        $(".sub-item").css("font-weight", "normal");
        $(this).css("font-weight", "bold");

        localStorage.setItem("selectedSubItem", $(this).text());
    });

    $(".nav-item span").click(function () {
        $(".nav-item span").css("font-weight", "normal");
        $(this).css("font-weight", "bold");

        localStorage.setItem("selectedNavItem", $(this).text());
    });

    var selectedSubItem = localStorage.getItem("selectedSubItem");
    if (selectedSubItem) {
        $(".sub-item").css("font-weight", "normal");
        $(".sub-item:contains('" + selectedSubItem + "')").css("font-weight", "bold");
        // $(".nav-item span").css("font-weight", "normal");
        $(".nav-item span:contains('" + selectedNavItem + "')").css("font-weight", "normal");
    }

    var selectedNavItem = localStorage.getItem("selectedNavItem");
    if (selectedNavItem) {
        $(".nav-item span").css("font-weight", "normal");
        $(".nav-item span:contains('" + selectedNavItem + "')").css("font-weight", "bold");
        // $(".sub-item").css("font-weight", "normal");
        $(".sub-item:contains('" + selectedSubItem + "')").css("font-weight", "normal");
    }

    $(".logo").click(function () {
        $(".sub-item").css("font-weight", "normal");
        $(".nav-item span").css("font-weight", "normal");
        $(".nav-item span:contains('" + selectedNavItem + "')").css("font-weight", "normal");
        $(".sub-item:contains('" + selectedSubItem + "')").css("font-weight", "normal");
        $(".nav-item span:contains('Tổng quan')").css("font-weight", "bold");
    });

});

function handleImageSelection() {
    const imageInput = document.getElementById('imageInput');

    // Kiểm tra xem người dùng đã chọn ít nhất một tệp tin hay không
    if (imageInput.files.length > 0) {
        const selectedImages = Array.from(imageInput.files);

        // Xử lý các tệp tin đã chọn ở đây (ví dụ: hiển thị thông tin về mỗi tệp)
        selectedImages.forEach((file, index) => {
            console.log(`Image ${index + 1}: ${file.name}`);
        });
    } else {
        alert('Vui lòng chọn ít nhất một ảnh.');
    }
}



document.addEventListener('DOMContentLoaded', function () {
    const checkboxes = document.querySelectorAll('.checkbox');
    const resultTable = document.getElementById('resultTable');
    
    console.log(checkboxes);

    checkboxes.forEach(checkbox => {
        checkbox.addEventListener('change', updateResult);
    });
  
    function updateResult() {
        const selectedColors = Array.from(document.querySelectorAll('.checkbox[data-category="color"]:checked'))
            .map(checkbox => checkbox.id.replace('Checkbox', ''));
    
        const selectedSizes = Array.from(document.querySelectorAll('.checkbox[data-category="size"]:checked'))
            .map(checkbox => checkbox.id.replace('Checkbox', ''));
    
        displayResults(selectedColors, selectedSizes);
    }
  
    function displayResults(colors, sizes) {
        resultTable.innerHTML = '';
        colors.forEach(color => {
            sizes.forEach(size => {
                const row = document.createElement('tr');
                const colorCell = document.createElement('td');
                const sizeCell = document.createElement('td');
                const quantityCell = document.createElement('td');
                const quantityInput = document.createElement('input');
    
                quantityInput.type = 'number';
                quantityInput.min = '0';
    
                colorCell.textContent = color;
                sizeCell.textContent = size;
                
                quantityCell.appendChild(quantityInput);
    
                row.appendChild(colorCell);
                row.appendChild(sizeCell);
                row.appendChild(quantityCell);
                console.log(color, size);
                resultTable.appendChild(row);
            });
        });
    }
});

function changeContent(contentId) {
    document.querySelectorAll('.content').forEach(function (content) {
        content.style.display = 'none';
    });

    // Show the selected content element
    var selectedContent = document.getElementById(contentId);
    if (selectedContent) {
        selectedContent.style.display = 'flex';
        console.log(selectedContent);
    }
}
window.addEventListener('DOMContentLoaded', (event) => {
    changeContent('overview');
});
