from PIL import Image, ImageEnhance

def process_image(image_path, contrast_level):
    image = Image.open(image_path)

    enhancer = ImageEnhance.Contrast(image)
    processed_image = enhancer.enhance(contrast_level)

    processed_image_path = 'static/processed_image.jpg'
    processed_image.save(processed_image_path)

    return processed_image_path
