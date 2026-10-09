package androidx.compose.foundation.text;

import android.os.Trace;
import androidx.compose.foundation.text.BasicText_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.snapshots.MutableSnapshot;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraphIntrinsics;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.TextStyleKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.n;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import kotlin.collections.EmptyList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class BasicText_androidKt {
    public static final StaticProvidableCompositionLocal a = new CompositionLocal(new n(16));
    public static Boolean b;

    public static final void a(final AnnotatedString annotatedString, final TextStyle textStyle, final FontFamily.Resolver resolver, final List list, final boolean z, Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        Executor executor = (Executor) gapComposer.j(a);
        if (executor != null && b(annotatedString.k.length())) {
            gapComposer.W(315439796);
            final LayoutDirection layoutDirection = (LayoutDirection) gapComposer.j(CompositionLocalsKt.n);
            final Density density = (Density) gapComposer.j(CompositionLocalsKt.h);
            try {
                executor.execute(new Runnable() { // from class: k4
                    @Override // java.lang.Runnable
                    public final void run() {
                        TextStyle textStyle2 = TextStyle.this;
                        LayoutDirection layoutDirection2 = layoutDirection;
                        AnnotatedString annotatedString2 = annotatedString;
                        Density density2 = density;
                        FontFamily.Resolver resolver2 = resolver;
                        boolean z2 = z;
                        StaticProvidableCompositionLocal staticProvidableCompositionLocal = BasicText_androidKt.a;
                        Trace.beginSection("BackgroundTextMeasurement");
                        try {
                            MutableSnapshot g = Snapshot.Companion.g(null, null);
                            try {
                                Snapshot j = g.j();
                                try {
                                    TextStyle a2 = TextStyleKt.a(textStyle2, layoutDirection2);
                                    List list2 = list;
                                    if (list2 == null) {
                                        list2 = EmptyList.j;
                                    }
                                    MultiParagraphIntrinsics multiParagraphIntrinsics = new MultiParagraphIntrinsics(annotatedString2, a2, list2, density2, resolver2, z2);
                                    multiParagraphIntrinsics.c();
                                    multiParagraphIntrinsics.b();
                                    Snapshot.q(j);
                                    g.w().a();
                                    g.c();
                                } catch (Throwable th) {
                                    Snapshot.q(j);
                                    throw th;
                                }
                            } finally {
                            }
                        } finally {
                            Trace.endSection();
                        }
                    }
                });
            } catch (RejectedExecutionException unused) {
            }
            gapComposer.p(false);
            return;
        }
        gapComposer.W(317137883);
        gapComposer.p(false);
    }

    public static final boolean b(int i) {
        boolean z;
        if (i >= 8 && i < 1000) {
            if (b == null) {
                if (Runtime.getRuntime().availableProcessors() >= 4) {
                    z = true;
                } else {
                    z = false;
                }
                b = Boolean.valueOf(z);
            }
            Boolean bool = b;
            bool.getClass();
            if (bool.booleanValue()) {
                return true;
            }
        }
        return false;
    }
}
