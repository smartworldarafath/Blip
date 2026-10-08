package androidx.compose.ui.graphics.vector.compat;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.Log;
import android.util.TypedValue;
import androidx.compose.ui.graphics.vector.PathParser;
import androidx.core.content.res.ComplexColorCompat;
import androidx.core.content.res.TypedArrayUtils;
import org.xmlpull.v1.XmlPullParser;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidVectorParser {
    public final XmlPullParser a;
    public int b = 0;
    public int[] c;
    public int d;
    public final PathParser e;

    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Object, androidx.compose.ui.graphics.vector.PathParser] */
    public AndroidVectorParser(XmlResourceParser xmlResourceParser) {
        this.a = xmlResourceParser;
        ?? obj = new Object();
        obj.a = new float[64];
        this.e = obj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x003b, code lost:
    
        if (r7 == null) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ComplexColorCompat a(TypedArray typedArray, Resources.Theme theme, String str, int i) {
        ComplexColorCompat complexColorCompat;
        if (TypedArrayUtils.a(this.a, str)) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i, typedValue);
            int i2 = typedValue.type;
            if (i2 >= 28 && i2 <= 31) {
                complexColorCompat = new ComplexColorCompat(null, typedValue.data);
            } else {
                try {
                    complexColorCompat = ComplexColorCompat.a(typedArray.getResources(), typedArray.getResourceId(i, 0), theme);
                } catch (Exception e) {
                    Log.e("ComplexColorCompat", "Failed to inflate ComplexColor.", e);
                    complexColorCompat = null;
                }
            }
            c(typedArray.getChangingConfigurations());
            return complexColorCompat;
        }
        complexColorCompat = new ComplexColorCompat(null, 0);
        c(typedArray.getChangingConfigurations());
        return complexColorCompat;
    }

    public final float b(TypedArray typedArray, String str, int i, float f) {
        if (TypedArrayUtils.a(this.a, str)) {
            f = typedArray.getFloat(i, f);
        }
        c(typedArray.getChangingConfigurations());
        return f;
    }

    public final void c(int i) {
        this.b = i | this.b;
    }
}
