package androidx.media3.datasource;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.common.ParserException;
import java.io.ByteArrayInputStream;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class BitmapUtil {
    public static Bitmap a(byte[] bArr, int i, int i2) {
        BitmapFactory.Options options;
        int i3 = 0;
        if (i2 != -1) {
            options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(bArr, 0, i, options);
            options.inJustDecodeBounds = false;
            options.inSampleSize = 1;
            for (int max = Math.max(options.outWidth, options.outHeight); max > i2; max /= 2) {
                options.inSampleSize *= 2;
            }
        } else {
            options = null;
        }
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, i, options);
        if (options != null) {
            options.inSampleSize = 1;
        }
        if (decodeByteArray != null) {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            try {
                ExifInterface exifInterface = new ExifInterface(byteArrayInputStream);
                byteArrayInputStream.close();
                switch (exifInterface.c()) {
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        i3 = 180;
                        break;
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        i3 = 270;
                        break;
                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        i3 = 90;
                        break;
                }
                if (i3 != 0) {
                    Matrix matrix = new Matrix();
                    matrix.postRotate(i3);
                    return Bitmap.createBitmap(decodeByteArray, 0, 0, decodeByteArray.getWidth(), decodeByteArray.getHeight(), matrix, false);
                }
                return decodeByteArray;
            } finally {
            }
        } else {
            throw ParserException.a(new IllegalStateException(), "Could not decode image data");
        }
    }
}
