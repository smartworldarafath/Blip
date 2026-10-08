package io.sentry.android.replay.viewhierarchy;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.VectorDrawable;
import android.os.Build;
import android.text.Layout;
import android.view.SurfaceView;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import io.sentry.SentryMaskingOptions;
import io.sentry.android.replay.util.AndroidTextLayout;
import io.sentry.android.replay.util.TextLayout;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.Pair;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@SuppressLint({"UseRequiresApi"})
@TargetApi(26)
/* loaded from: classes.dex */
public abstract class ViewHierarchyNode {
    public final int a;
    public final int b;
    public final float c;
    public final boolean d;
    public final boolean e;
    public final Rect f;
    public ArrayList g;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        /* JADX WARN: Code restructure failed: missing block: B:13:0x009e, code lost:
        
            if (kotlin.text.StringsKt.i(r9, "sentry-unmask", false) == true) goto L37;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x00d2, code lost:
        
            if (kotlin.text.StringsKt.i(r10, "sentry-mask", false) == true) goto L48;
         */
        /* JADX WARN: Removed duplicated region for block: B:27:0x012e  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x017a  */
        /* JADX WARN: Removed duplicated region for block: B:62:0x01e6  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public static ViewHierarchyNode a(View view, ViewHierarchyNode viewHierarchyNode, SentryMaskingOptions sentryMaskingOptions) {
            Pair pair;
            boolean z;
            float f;
            float f2;
            float f3;
            boolean z2;
            boolean z3;
            boolean z4;
            boolean z5;
            boolean z6;
            boolean z7;
            Bitmap bitmap;
            int extendedPaddingTop;
            String str;
            String str2;
            float f4;
            sentryMaskingOptions.getClass();
            AndroidTextLayout androidTextLayout = null;
            if (view.isAttachedToWindow()) {
                if (view.getWindowVisibility() != 0) {
                    pair = new Pair(Boolean.FALSE, null);
                } else {
                    Object obj = view;
                    while (obj instanceof View) {
                        if (Build.VERSION.SDK_INT >= 29) {
                            f4 = ((View) obj).getTransitionAlpha();
                        } else {
                            f4 = 1.0f;
                        }
                        View view2 = (View) obj;
                        if (view2.getAlpha() > 0.0f && f4 > 0.0f && view2.getVisibility() == 0) {
                            obj = view2.getParent();
                        } else {
                            pair = new Pair(Boolean.FALSE, null);
                            break;
                        }
                    }
                    Rect rect = new Rect();
                    pair = new Pair(Boolean.valueOf(view.getGlobalVisibleRect(rect, new Point())), rect);
                }
            } else {
                pair = new Pair(Boolean.FALSE, null);
            }
            boolean booleanValue = ((Boolean) pair.j).booleanValue();
            Rect rect2 = (Rect) pair.k;
            if (booleanValue) {
                Object tag = view.getTag();
                if (tag instanceof String) {
                    str = (String) tag;
                } else {
                    str = null;
                }
                if (str != null) {
                    String lowerCase = str.toLowerCase(Locale.ROOT);
                    lowerCase.getClass();
                }
                if (!Intrinsics.a(view.getTag(R.id.sentry_privacy), "unmask")) {
                    Object tag2 = view.getTag();
                    if (tag2 instanceof String) {
                        str2 = (String) tag2;
                    } else {
                        str2 = null;
                    }
                    if (str2 != null) {
                        String lowerCase2 = str2.toLowerCase(Locale.ROOT);
                        lowerCase2.getClass();
                    }
                    if (!Intrinsics.a(view.getTag(R.id.sentry_privacy), "mask")) {
                        if (view.getParent() != null) {
                            view.getParent().getClass();
                        }
                        Class<?> cls = view.getClass();
                        CopyOnWriteArraySet copyOnWriteArraySet = sentryMaskingOptions.b;
                        copyOnWriteArraySet.getClass();
                        while (true) {
                            if (cls != null) {
                                if (copyOnWriteArraySet.contains(cls.getName())) {
                                    break;
                                }
                                cls = cls.getSuperclass();
                            } else {
                                CopyOnWriteArraySet copyOnWriteArraySet2 = sentryMaskingOptions.a;
                                copyOnWriteArraySet2.getClass();
                                for (Class<?> cls2 = view.getClass(); cls2 != null; cls2 = cls2.getSuperclass()) {
                                    if (!copyOnWriteArraySet2.contains(cls2.getName())) {
                                    }
                                }
                            }
                        }
                    }
                    sentryMaskingOptions.d();
                    z = true;
                    if (!(view instanceof TextView)) {
                        TextView textView = (TextView) view;
                        Layout layout = textView.getLayout();
                        if (layout != null) {
                            androidTextLayout = new AndroidTextLayout(layout);
                        }
                        AndroidTextLayout androidTextLayout2 = androidTextLayout;
                        int currentTextColor = textView.getCurrentTextColor() | (-16777216);
                        int totalPaddingLeft = textView.getTotalPaddingLeft();
                        try {
                            extendedPaddingTop = textView.getTotalPaddingTop();
                        } catch (NullPointerException unused) {
                            extendedPaddingTop = textView.getExtendedPaddingTop();
                        }
                        textView.getX();
                        textView.getY();
                        float f5 = 0.0f;
                        int width = textView.getWidth();
                        int i = extendedPaddingTop;
                        int height = textView.getHeight();
                        if (viewHierarchyNode != null) {
                            f5 = viewHierarchyNode.c;
                        }
                        return new TextViewHierarchyNode(androidTextLayout2, Integer.valueOf(currentTextColor), totalPaddingLeft, i, width, height, textView.getElevation() + f5, viewHierarchyNode, z, booleanValue, rect2);
                    }
                    boolean z8 = z;
                    if (view instanceof ImageView) {
                        ImageView imageView = (ImageView) view;
                        imageView.getX();
                        imageView.getY();
                        int width2 = imageView.getWidth();
                        int height2 = imageView.getHeight();
                        if (viewHierarchyNode != null) {
                            f3 = viewHierarchyNode.c;
                        } else {
                            f3 = 0.0f;
                        }
                        float elevation = imageView.getElevation() + f3;
                        if (z8) {
                            Drawable drawable = imageView.getDrawable();
                            if (drawable != null) {
                                if (drawable instanceof InsetDrawable) {
                                    z4 = true;
                                } else {
                                    z4 = drawable instanceof ColorDrawable;
                                }
                                if (z4) {
                                    z5 = true;
                                } else {
                                    z5 = drawable instanceof VectorDrawable;
                                }
                                if (z5) {
                                    z6 = true;
                                } else {
                                    z6 = drawable instanceof GradientDrawable;
                                }
                                if (z6 || ((drawable instanceof BitmapDrawable) && ((bitmap = ((BitmapDrawable) drawable).getBitmap()) == null || bitmap.isRecycled() || bitmap.getHeight() <= 10 || bitmap.getWidth() <= 10))) {
                                    z7 = false;
                                } else {
                                    z7 = true;
                                }
                                if (z7) {
                                    z3 = true;
                                    if (z3) {
                                        z2 = true;
                                        return new ViewHierarchyNode(width2, height2, elevation, viewHierarchyNode, z2, booleanValue, rect2);
                                    }
                                }
                            }
                            z3 = false;
                            if (z3) {
                            }
                        }
                        z2 = false;
                        return new ViewHierarchyNode(width2, height2, elevation, viewHierarchyNode, z2, booleanValue, rect2);
                    }
                    if (view instanceof SurfaceView) {
                        WeakReference weakReference = new WeakReference(view);
                        SurfaceView surfaceView = (SurfaceView) view;
                        surfaceView.getX();
                        surfaceView.getY();
                        int width3 = surfaceView.getWidth();
                        int height3 = surfaceView.getHeight();
                        if (viewHierarchyNode != null) {
                            f2 = viewHierarchyNode.c;
                        } else {
                            f2 = 0.0f;
                        }
                        return new SurfaceViewHierarchyNode(weakReference, width3, height3, surfaceView.getElevation() + f2, viewHierarchyNode, z8, booleanValue, rect2);
                    }
                    view.getX();
                    view.getY();
                    int width4 = view.getWidth();
                    int height4 = view.getHeight();
                    if (viewHierarchyNode != null) {
                        f = viewHierarchyNode.c;
                    } else {
                        f = 0.0f;
                    }
                    return new ViewHierarchyNode(width4, height4, f + view.getElevation(), viewHierarchyNode, z8, booleanValue, rect2);
                }
                sentryMaskingOptions.d();
            }
            z = false;
            if (!(view instanceof TextView)) {
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class GenericViewHierarchyNode extends ViewHierarchyNode {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ImageViewHierarchyNode extends ViewHierarchyNode {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SurfaceViewHierarchyNode extends ViewHierarchyNode {
        public final WeakReference h;

        public SurfaceViewHierarchyNode(WeakReference weakReference, int i, int i2, float f, ViewHierarchyNode viewHierarchyNode, boolean z, boolean z2, Rect rect) {
            super(i, i2, f, viewHierarchyNode, z, z2, rect);
            this.h = weakReference;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class TextViewHierarchyNode extends ViewHierarchyNode {
        public final TextLayout h;
        public final Integer i;
        public final int j;
        public final int k;

        public TextViewHierarchyNode(TextLayout textLayout, Integer num, int i, int i2, int i3, int i4, float f, ViewHierarchyNode viewHierarchyNode, boolean z, boolean z2, Rect rect) {
            super(i3, i4, f, viewHierarchyNode, z, z2, rect);
            this.h = textLayout;
            this.i = num;
            this.j = i;
            this.k = i2;
        }
    }

    public ViewHierarchyNode(int i, int i2, float f, ViewHierarchyNode viewHierarchyNode, boolean z, boolean z2, Rect rect) {
        this.a = i;
        this.b = i2;
        this.c = f;
        this.d = z;
        this.e = z2;
        this.f = rect;
    }

    public final void a(Function1 function1) {
        ArrayList arrayList;
        if (((Boolean) function1.b(this)).booleanValue() && (arrayList = this.g) != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((ViewHierarchyNode) it.next()).a(function1);
            }
        }
    }
}
