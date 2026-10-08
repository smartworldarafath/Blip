package io.sentry.android.replay.util;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import io.sentry.android.replay.viewhierarchy.ViewHierarchyNode;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@SuppressLint({"UseKtx"})
/* loaded from: classes.dex */
public final class MaskRenderer implements Closeable {
    public final Lazy j;
    public final Lazy k;
    public final Lazy l;

    public MaskRenderer() {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.k;
        this.j = LazyKt.a(lazyThreadSafetyMode, MaskRenderer$lazySinglePixelBitmap$1.k);
        this.k = LazyKt.a(lazyThreadSafetyMode, new Function0<Canvas>() { // from class: io.sentry.android.replay.util.MaskRenderer$singlePixelBitmapCanvas$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                return new Canvas((Bitmap) MaskRenderer.this.j.getValue());
            }
        });
        this.l = LazyKt.a(lazyThreadSafetyMode, MaskRenderer$maskingPaint$2.k);
    }

    public final List a(final Bitmap bitmap, ViewHierarchyNode viewHierarchyNode, final Matrix matrix) {
        bitmap.getClass();
        if (bitmap.isRecycled()) {
            return EmptyList.j;
        }
        final ArrayList arrayList = new ArrayList();
        final Canvas canvas = new Canvas(bitmap);
        if (matrix != null) {
            canvas.setMatrix(matrix);
        }
        viewHierarchyNode.a(new Function1<ViewHierarchyNode, Boolean>() { // from class: io.sentry.android.replay.util.MaskRenderer$renderMasks$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                Pair pair;
                Integer num;
                List list;
                ViewHierarchyNode viewHierarchyNode2 = (ViewHierarchyNode) obj;
                MaskRenderer maskRenderer = MaskRenderer.this;
                Lazy lazy = maskRenderer.l;
                Lazy lazy2 = maskRenderer.j;
                viewHierarchyNode2.getClass();
                Rect rect = viewHierarchyNode2.f;
                if (viewHierarchyNode2.d && viewHierarchyNode2.a > 0 && viewHierarchyNode2.b > 0) {
                    if (rect == null) {
                        return Boolean.FALSE;
                    }
                    int i = -16777216;
                    if (viewHierarchyNode2 instanceof ViewHierarchyNode.ImageViewHierarchyNode) {
                        List B = CollectionsKt.B(rect);
                        Bitmap bitmap2 = bitmap;
                        if (!bitmap2.isRecycled() && !((Bitmap) lazy2.getValue()).isRecycled()) {
                            Rect rect2 = new Rect(rect);
                            RectF rectF = new RectF(rect2);
                            Matrix matrix2 = matrix;
                            if (matrix2 != null) {
                                matrix2.mapRect(rectF);
                            }
                            rectF.round(rect2);
                            ((Canvas) maskRenderer.k.getValue()).drawBitmap(bitmap2, rect2, new Rect(0, 0, 1, 1), (Paint) null);
                            i = ((Bitmap) lazy2.getValue()).getPixel(0, 0);
                        }
                        pair = new Pair(B, Integer.valueOf(i));
                    } else if (viewHierarchyNode2 instanceof ViewHierarchyNode.TextViewHierarchyNode) {
                        ViewHierarchyNode.TextViewHierarchyNode textViewHierarchyNode = (ViewHierarchyNode.TextViewHierarchyNode) viewHierarchyNode2;
                        TextLayout textLayout = textViewHierarchyNode.h;
                        if ((textLayout != null && (num = textLayout.e()) != null) || (num = textViewHierarchyNode.i) != null) {
                            i = num.intValue();
                        }
                        int i2 = textViewHierarchyNode.j;
                        int i3 = textViewHierarchyNode.k;
                        if (textLayout == null) {
                            list = CollectionsKt.B(rect);
                        } else {
                            ArrayList arrayList2 = new ArrayList();
                            int c = textLayout.c();
                            for (int i4 = 0; i4 < c; i4++) {
                                int f = (int) textLayout.f(i4);
                                int d = (int) textLayout.d(i4);
                                int a = textLayout.a(i4);
                                int b = textLayout.b(i4);
                                Rect rect3 = new Rect();
                                rect3.left = rect.left + i2 + f;
                                rect3.right = rect.left + i2 + d;
                                int i5 = rect.top + i3 + a;
                                rect3.top = i5;
                                rect3.bottom = (b - a) + i5;
                                arrayList2.add(rect3);
                            }
                            list = arrayList2;
                        }
                        pair = new Pair(list, Integer.valueOf(i));
                    } else {
                        pair = new Pair(CollectionsKt.B(rect), -16777216);
                    }
                    List list2 = (List) pair.j;
                    ((Paint) lazy.getValue()).setColor(((Number) pair.k).intValue());
                    Iterator it = list2.iterator();
                    while (it.hasNext()) {
                        canvas.drawRoundRect(new RectF((Rect) it.next()), 10.0f, 10.0f, (Paint) lazy.getValue());
                    }
                    arrayList.addAll(list2);
                }
                return Boolean.TRUE;
            }
        });
        return arrayList;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        Lazy lazy = this.j;
        if (lazy.c() && !((Bitmap) lazy.getValue()).isRecycled()) {
            ((Bitmap) lazy.getValue()).recycle();
        }
    }
}
