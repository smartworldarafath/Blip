package androidx.compose.ui.res;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import androidx.collection.MutableIntObjectMap;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.graphics.AndroidImageBitmap;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.painter.BitmapPainter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.vector.VectorPainter;
import androidx.compose.ui.graphics.vector.VectorPainterKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.ImageVectorCache;
import defpackage.u2;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PainterResources_androidKt {
    public static final Painter a(int i, Composer composer) {
        TypedValue typedValue;
        ImageVectorCache.ImageVectorEntry imageVectorEntry;
        GapComposer gapComposer = (GapComposer) composer;
        Context context = (Context) gapComposer.j(AndroidCompositionLocals_androidKt.b);
        Resources resources = (Resources) gapComposer.j(AndroidCompositionLocals_androidKt.c);
        ResourceIdCache resourceIdCache = (ResourceIdCache) gapComposer.j(AndroidCompositionLocals_androidKt.e);
        synchronized (resourceIdCache) {
            typedValue = (TypedValue) resourceIdCache.a.b(i);
            if (typedValue == null) {
                typedValue = new TypedValue();
                resources.getValue(i, typedValue, true);
                MutableIntObjectMap mutableIntObjectMap = resourceIdCache.a;
                int d = mutableIntObjectMap.d(i);
                Object[] objArr = mutableIntObjectMap.c;
                Object obj = objArr[d];
                mutableIntObjectMap.b[d] = i;
                objArr[d] = typedValue;
            }
        }
        CharSequence charSequence = typedValue.string;
        if (charSequence != null && StringsKt.m(charSequence, ".xml")) {
            gapComposer.W(-1771798434);
            Resources.Theme theme = context.getTheme();
            int i2 = typedValue.changingConfigurations;
            ImageVectorCache imageVectorCache = (ImageVectorCache) gapComposer.j(AndroidCompositionLocals_androidKt.d);
            ImageVectorCache.Key key = new ImageVectorCache.Key(theme, i);
            WeakReference weakReference = (WeakReference) imageVectorCache.a.get(key);
            if (weakReference != null) {
                imageVectorEntry = (ImageVectorCache.ImageVectorEntry) weakReference.get();
            } else {
                imageVectorEntry = null;
            }
            if (imageVectorEntry == null) {
                XmlResourceParser xml = resources.getXml(i);
                int next = xml.next();
                while (next != 2 && next != 1) {
                    next = xml.next();
                }
                if (next == 2) {
                    if (Intrinsics.a(xml.getName(), "vector")) {
                        imageVectorEntry = VectorResources_androidKt.a(theme, resources, xml, i2);
                        imageVectorCache.a.put(key, new WeakReference(imageVectorEntry));
                    } else {
                        u2.g("Only VectorDrawables and rasterized asset types are supported ex. PNG, JPG, WEBP");
                        return null;
                    }
                } else {
                    throw new XmlPullParserException("No start tag found");
                }
            }
            VectorPainter b = VectorPainterKt.b(imageVectorEntry.a, gapComposer);
            gapComposer.p(false);
            return b;
        }
        gapComposer.W(-1771643000);
        boolean f = gapComposer.f(context.getTheme()) | gapComposer.f(charSequence) | gapComposer.d(i);
        Object K = gapComposer.K();
        if (f || K == Composer.Companion.a) {
            try {
                Drawable drawable = resources.getDrawable(i, null);
                drawable.getClass();
                K = new AndroidImageBitmap(((BitmapDrawable) drawable).getBitmap());
                gapComposer.g0(K);
            } catch (Exception e) {
                throw new RuntimeException("Error attempting to load resource: " + ((Object) charSequence), e);
            }
        }
        BitmapPainter bitmapPainter = new BitmapPainter((ImageBitmap) K);
        gapComposer.p(false);
        return bitmapPainter;
    }
}
