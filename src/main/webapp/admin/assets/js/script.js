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

function changeContent(contentId) {
    document.querySelectorAll('.content').forEach(function (content) {
        content.style.display = 'none';
    });
    var selectedContent = document.getElementById(contentId);
    if (selectedContent) {
        selectedContent.style.display = 'flex'; // block
    }
}

document.addEventListener('DOMContentLoaded', function () {
    const checkboxes = document.querySelectorAll('.checkbox');
    const resultTable = document.getElementById('resultTable');
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
        sizes.forEach(size => {
            colors.forEach(color => {
                const row = document.createElement('tr');
                const sizeCell = document.createElement('td');
                const colorCell = document.createElement('td');
                const quantityCell = document.createElement('td');
                const quantityInput = document.createElement('input');
    
                quantityInput.type = 'number';
                quantityInput.min = '0';
                quantityInput.value = '1';
                quantityInput.className = 'quantity';

                sizeCell.textContent = size;
                colorCell.textContent = color;
                // quantityInput.addEventListener('input', updateHiddenInputs);

                quantityInput.addEventListener('input', function() {
                    updateHiddenInputs();
                    console.log(color, size, this.value);
                });
                quantityCell.appendChild(quantityInput);
    
                row.appendChild(sizeCell);
                row.appendChild(colorCell);
                row.appendChild(quantityCell);
                resultTable.appendChild(row);
            });
        });
    }
});

// gửi qua csdl
function updateHiddenInputs(){
    $('form input[type="hidden"]').remove();
    var tableData = [];
    $('#resultTable tr').each(function(row, tr) {
        tableData[row] = {
            "Kích thước" : $(tr).find('td:eq(0)').text(),
            "Màu sắc" : $(tr).find('td:eq(1)').text(),
            "Số lượng" : $(tr).find('td:eq(2) input').val()
        }
    });

    // Add the table data to the form as hidden input fields
    for (var i = 0; i < tableData.length; i++) {
        $('form').append('<input type="hidden" name="tableData[' + i + '][Kích thước]" value="' + tableData[i]['Kích thước'] + '">');
        $('form').append('<input type="hidden" name="tableData[' + i + '][Màu sắc]" value="' + tableData[i]['Màu sắc'] + '">');
        $('form').append('<input type="hidden" name="tableData[' + i + '][Số lượng]" value="' + tableData[i]['Số lượng'] + '">');
    }
}
//  submit form
$('form').on('submit', function(e) {
    e.preventDefault();
    this.submit();
});

// show img input
$('#imageInput').on('change', function() {
    if (this.files && this.files[0]) {
        var reader = new FileReader();
        reader.onload = function(e) {
            $('#product__imgupload img').attr('src', e.target.result);
        }
        reader.readAsDataURL(this.files[0]);
    }
});
$('#productNameInput').on('input', function() {
    $('#productNameDisplay').text($(this).val());
});

$('#productCostInput').on('input', function() {
    $('#productCostDisplay').text($(this).val() + ' VNĐ');
});

// show hidden user
$(document).ready(function () {
    var rowsToShow = 4;
    var totalRows = $('tbodyUser tr').length;

    $('tbodyUser tr:gt(' + (rowsToShow - 1) + ')').addClass('hidden-row');

    $('#loadMoreUser').on('click', function (e) {
        e.preventDefault();
        $('.hidden-row:lt(' + rowsToShow + ')').removeClass('hidden-row');
        if ($('.hidden-row').length == 0) {
            $('#loadMoreUser').hide();
        }
    });
});

window.addEventListener('DOMContentLoaded', (event) => {
    changeContent('overview');
});

