package androidx.core.graphics.drawable;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.PorterDuff;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.versionedparcelable.CustomVersionedParcelable;
import defpackage.fe;
import defpackage.k8;
import defpackage.u2;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class IconCompat extends CustomVersionedParcelable {
    public static final PorterDuff.Mode k = PorterDuff.Mode.SRC_IN;
    public int a;
    public Object b;
    public byte[] c = null;
    public Parcelable d = null;
    public int e = 0;
    public int f = 0;
    public ColorStateList g = null;
    public PorterDuff.Mode h = k;
    public String i = null;
    public String j;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Api30Impl {
        public static Icon a(Uri uri) {
            return Icon.createWithAdaptiveBitmapContentUri(uri);
        }
    }

    public IconCompat(int i) {
        this.a = i;
    }

    public static IconCompat a(Resources resources, String str, int i) {
        str.getClass();
        if (i != 0) {
            IconCompat iconCompat = new IconCompat(2);
            iconCompat.e = i;
            if (resources != null) {
                try {
                    iconCompat.b = resources.getResourceName(i);
                } catch (Resources.NotFoundException unused) {
                    u2.g("Icon resource cannot be found");
                    return null;
                }
            } else {
                iconCompat.b = str;
            }
            iconCompat.j = str;
            return iconCompat;
        }
        u2.g("Drawable resource ID must not be 0");
        return null;
    }

    public final int b() {
        int i = this.a;
        if (i == -1) {
            return ((Icon) this.b).getResId();
        }
        if (i == 2) {
            return this.e;
        }
        fe.n(this, "called getResId() on ");
        return 0;
    }

    public final Uri c() {
        int i = this.a;
        if (i == -1) {
            return ((Icon) this.b).getUri();
        }
        if (i != 4 && i != 6) {
            fe.n(this, "called getUri() on ");
            return null;
        }
        return Uri.parse((String) this.b);
    }

    public final InputStream d(Context context) {
        Uri c = c();
        String scheme = c.getScheme();
        if (!"content".equals(scheme) && !"file".equals(scheme)) {
            try {
                return new FileInputStream(new File((String) this.b));
            } catch (FileNotFoundException e) {
                Log.w("IconCompat", "Unable to load image from path: " + c, e);
                return null;
            }
        }
        try {
            return context.getContentResolver().openInputStream(c);
        } catch (Exception e2) {
            Log.w("IconCompat", "Unable to load image from URI: " + c, e2);
            return null;
        }
    }

    public final Icon e(Context context) {
        Icon createWithBitmap;
        String str;
        int i = this.a;
        switch (i) {
            case -1:
                return (Icon) this.b;
            case 0:
            default:
                u2.g("Unknown type");
                return null;
            case 1:
                createWithBitmap = Icon.createWithBitmap((Bitmap) this.b);
                break;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                if (i == -1) {
                    str = ((Icon) this.b).getResPackage();
                } else if (i == 2) {
                    String str2 = this.j;
                    if (str2 != null && !TextUtils.isEmpty(str2)) {
                        str = this.j;
                    } else {
                        str = ((String) this.b).split(":", -1)[0];
                    }
                } else {
                    fe.n(this, "called getResPackage() on ");
                    return null;
                }
                createWithBitmap = Icon.createWithResource(str, this.e);
                break;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                createWithBitmap = Icon.createWithData((byte[]) this.b, this.e, this.f);
                break;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                createWithBitmap = Icon.createWithContentUri((String) this.b);
                break;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                createWithBitmap = Icon.createWithAdaptiveBitmap((Bitmap) this.b);
                break;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                if (Build.VERSION.SDK_INT >= 30) {
                    createWithBitmap = Api30Impl.a(c());
                    break;
                } else if (context != null) {
                    InputStream d = d(context);
                    if (d != null) {
                        createWithBitmap = Icon.createWithAdaptiveBitmap(BitmapFactory.decodeStream(d));
                        break;
                    } else {
                        k8.p(c(), "Cannot load adaptive icon from uri: ");
                        return null;
                    }
                } else {
                    fe.w(c(), "Context is required to resolve the file uri of the icon: ");
                    return null;
                }
        }
        ColorStateList colorStateList = this.g;
        if (colorStateList != null) {
            createWithBitmap.setTintList(colorStateList);
        }
        PorterDuff.Mode mode = this.h;
        if (mode != k) {
            createWithBitmap.setTintMode(mode);
        }
        return createWithBitmap;
    }

    public final String toString() {
        String str;
        if (this.a == -1) {
            return String.valueOf(this.b);
        }
        StringBuilder sb = new StringBuilder("Icon(typ=");
        switch (this.a) {
            case 1:
                str = "BITMAP";
                break;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                str = "RESOURCE";
                break;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                str = "DATA";
                break;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                str = "URI";
                break;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                str = "BITMAP_MASKABLE";
                break;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                str = "URI_MASKABLE";
                break;
            default:
                str = "UNKNOWN";
                break;
        }
        sb.append(str);
        switch (this.a) {
            case 1:
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                sb.append(" size=");
                sb.append(((Bitmap) this.b).getWidth());
                sb.append("x");
                sb.append(((Bitmap) this.b).getHeight());
                break;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                sb.append(" pkg=");
                sb.append(this.j);
                sb.append(" id=");
                sb.append(String.format("0x%08x", Integer.valueOf(b())));
                break;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                sb.append(" len=");
                sb.append(this.e);
                if (this.f != 0) {
                    sb.append(" off=");
                    sb.append(this.f);
                    break;
                }
                break;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                sb.append(" uri=");
                sb.append(this.b);
                break;
        }
        if (this.g != null) {
            sb.append(" tint=");
            sb.append(this.g);
        }
        if (this.h != k) {
            sb.append(" mode=");
            sb.append(this.h);
        }
        sb.append(")");
        return sb.toString();
    }
}
