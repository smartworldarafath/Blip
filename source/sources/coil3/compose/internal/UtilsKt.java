package coil3.compose.internal;

import android.content.Context;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.InspectionModeKt;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.lifecycle.Lifecycle;
import coil3.ExtrasKt;
import coil3.compose.AsyncImagePreviewHandler;
import coil3.compose.LocalAsyncImagePreviewHandlerKt;
import coil3.request.ImageRequest;
import coil3.request.ImageRequests_androidKt;
import coil3.size.RealSizeResolver;
import coil3.size.SizeResolver;
import defpackage.q;
import defpackage.u2;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class UtilsKt {
    public static final long a = ConstraintsKt.b(0, 0, 0, 0, 5);
    public static final /* synthetic */ int b = 0;

    public static final MeasurePolicy a() {
        return UtilsKt$UseMinConstraintsMeasurePolicy$1.a;
    }

    public static final AsyncImagePreviewHandler b(Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        if (((Boolean) gapComposer.j(InspectionModeKt.a)).booleanValue()) {
            gapComposer.W(2019030948);
            AsyncImagePreviewHandler asyncImagePreviewHandler = (AsyncImagePreviewHandler) gapComposer.j(LocalAsyncImagePreviewHandlerKt.a);
            gapComposer.p(false);
            return asyncImagePreviewHandler;
        }
        gapComposer.W(2019088453);
        gapComposer.p(false);
        return null;
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [coil3.compose.ConstraintsSizeResolver, java.lang.Object] */
    public static final SizeResolver c(ContentScale contentScale, Composer composer) {
        RealSizeResolver realSizeResolver;
        boolean a2 = Intrinsics.a(contentScale, ContentScale.Companion.d);
        GapComposer gapComposer = (GapComposer) composer;
        boolean g = gapComposer.g(a2);
        Object K = gapComposer.K();
        if (g || K == Composer.Companion.a) {
            if (a2) {
                realSizeResolver = SizeResolver.a;
            } else {
                ?? obj = new Object();
                obj.b = a;
                obj.c = new ArrayList();
                realSizeResolver = obj;
            }
            K = realSizeResolver;
            gapComposer.g0(K);
        }
        return (SizeResolver) K;
    }

    public static final ImageRequest d(Object obj, Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.W(1319639034);
        if (obj instanceof ImageRequest) {
            gapComposer.W(1530875884);
            ImageRequest imageRequest = (ImageRequest) obj;
            gapComposer.p(false);
            gapComposer.p(false);
            return imageRequest;
        }
        gapComposer.W(1530915130);
        Context context = (Context) gapComposer.j(AndroidCompositionLocals_androidKt.b);
        boolean f = gapComposer.f(context) | gapComposer.f(obj);
        Object K = gapComposer.K();
        if (f || K == Composer.Companion.a) {
            ImageRequest.Builder builder = new ImageRequest.Builder(context);
            builder.c = obj;
            K = builder.a();
            gapComposer.g0(K);
        }
        ImageRequest imageRequest2 = (ImageRequest) K;
        gapComposer.p(false);
        gapComposer.p(false);
        return imageRequest2;
    }

    public static final long e(long j) {
        return (MathKt.b(Float.intBitsToFloat((int) (j & 4294967295L))) & 4294967295L) | (MathKt.b(Float.intBitsToFloat((int) (j >> 32))) << 32);
    }

    public static void f(String str) {
        throw new IllegalArgumentException("Unsupported type: " + str + ". " + q.i("If you wish to display this ", str, ", use androidx.compose.foundation.Image."));
    }

    public static final void g(ImageRequest imageRequest) {
        Object obj = imageRequest.b;
        if (!(obj instanceof ImageRequest.Builder)) {
            if (!(obj instanceof ImageBitmap)) {
                if (!(obj instanceof ImageVector)) {
                    if (!(obj instanceof Painter)) {
                        if (imageRequest.c == null) {
                            if (((Lifecycle) ExtrasKt.a(imageRequest, ImageRequests_androidKt.e)) == null) {
                                return;
                            }
                            u2.g("request.lifecycle must be null.");
                            return;
                        }
                        u2.g("request.target must be null.");
                        return;
                    }
                    f("Painter");
                    throw null;
                }
                f("ImageVector");
                throw null;
            }
            f("ImageBitmap");
            throw null;
        }
        u2.g("Unsupported type: ImageRequest.Builder. Did you forget to call ImageRequest.Builder.build()?");
    }
}
