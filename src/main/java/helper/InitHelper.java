package helper;

import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.shape.Rectangle;

import java.io.File;

public class InitHelper {
    public void intiCustomImage(ImageView img, String imgPath, int desiredWidth, int desiredHeight, int radius) {
        File brandingFile = new File(imgPath);

        // Create a new image with the desired size
        Image resizedImage = new Image(brandingFile.toURI().toString(), desiredWidth, desiredHeight, false, false);

        // Set the resized image on the ImageView
        img.setImage(resizedImage);

        // Create a rectangle clip with rounded corners
        Rectangle clip = new Rectangle();
        clip.setWidth(img.getFitWidth());
        clip.setHeight(img.getFitHeight());
        clip.setArcWidth(radius);
        clip.setArcHeight(radius);

        // Apply the clip to the ImageView
        img.setClip(clip);
    }
    public void initImageIcon(ImageView img, String imgPath)
    {
        File brandingFile = new File(imgPath);
        Image image = new Image(brandingFile.toURI().toString());
        img.setImage(image);
    }
    public void initImage(ImageView img, String imgPath) {
        intiCustomImage(img, imgPath, 173, 138, 20);

    }
    public void initDetailImage(ImageView img, String imgPath) {
        intiCustomImage(img, imgPath, 495, 475, 5);

    }


}
