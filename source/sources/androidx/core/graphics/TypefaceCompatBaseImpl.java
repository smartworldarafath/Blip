package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.provider.FontsContractCompat;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TypefaceCompatBaseImpl {
    public TypefaceCompatBaseImpl() {
        new ConcurrentHashMap();
    }

    public abstract Typeface a(Context context, FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry, Resources resources, int i);

    public abstract Typeface b(Context context, FontsContractCompat.FontInfo[] fontInfoArr, int i);

    public abstract Typeface c(Context context, List list, int i);

    public abstract Typeface d(Context context, Resources resources, int i, String str);
}
