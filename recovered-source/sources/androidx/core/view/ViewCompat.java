package androidx.core.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ContentInfo;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.PathInterpolator;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ContentInfoCompat;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.core.widget.TextViewOnReceiveContentListener;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.oi;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Objects;
import java.util.WeakHashMap;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@SuppressLint({"PrivateConstructorForUtilityClass"})
/* loaded from: classes.dex */
public abstract class ViewCompat {
    public static Field a = null;
    public static boolean b = false;
    public static final int[] c = {R.id.accessibility_custom_action_0, R.id.accessibility_custom_action_1, R.id.accessibility_custom_action_2, R.id.accessibility_custom_action_3, R.id.accessibility_custom_action_4, R.id.accessibility_custom_action_5, R.id.accessibility_custom_action_6, R.id.accessibility_custom_action_7, R.id.accessibility_custom_action_8, R.id.accessibility_custom_action_9, R.id.accessibility_custom_action_10, R.id.accessibility_custom_action_11, R.id.accessibility_custom_action_12, R.id.accessibility_custom_action_13, R.id.accessibility_custom_action_14, R.id.accessibility_custom_action_15, R.id.accessibility_custom_action_16, R.id.accessibility_custom_action_17, R.id.accessibility_custom_action_18, R.id.accessibility_custom_action_19, R.id.accessibility_custom_action_20, R.id.accessibility_custom_action_21, R.id.accessibility_custom_action_22, R.id.accessibility_custom_action_23, R.id.accessibility_custom_action_24, R.id.accessibility_custom_action_25, R.id.accessibility_custom_action_26, R.id.accessibility_custom_action_27, R.id.accessibility_custom_action_28, R.id.accessibility_custom_action_29, R.id.accessibility_custom_action_30, R.id.accessibility_custom_action_31};
    public static final oi d = new Object();
    public static final AccessibilityPaneVisibilityManager e = new AccessibilityPaneVisibilityManager();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.core.view.ViewCompat$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 extends AccessibilityViewProperty<Boolean> {
        @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
        public final Object a(View view) {
            return Boolean.valueOf(Api28Impl.c(view));
        }

        @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
        public final void b(View view, Object obj) {
            Api28Impl.f(view, ((Boolean) obj).booleanValue());
        }

        @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
        public final boolean d(Object obj, Object obj2) {
            boolean z;
            boolean z2;
            Boolean bool = (Boolean) obj;
            Boolean bool2 = (Boolean) obj2;
            boolean z3 = false;
            if (bool != null && bool.booleanValue()) {
                z = true;
            } else {
                z = false;
            }
            if (bool2 != null && bool2.booleanValue()) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z == z2) {
                z3 = true;
            }
            return !z3;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.core.view.ViewCompat$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass2 extends AccessibilityViewProperty<CharSequence> {
        @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
        public final Object a(View view) {
            return Api28Impl.a(view);
        }

        @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
        public final void b(View view, Object obj) {
            Api28Impl.e(view, (CharSequence) obj);
        }

        @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
        public final boolean d(Object obj, Object obj2) {
            return !TextUtils.equals((CharSequence) obj, (CharSequence) obj2);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.core.view.ViewCompat$3, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass3 extends AccessibilityViewProperty<CharSequence> {
        @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
        public final Object a(View view) {
            return Api30Impl.b(view);
        }

        @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
        public final void b(View view, Object obj) {
            Api30Impl.c(view, (CharSequence) obj);
        }

        @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
        public final boolean d(Object obj, Object obj2) {
            return !TextUtils.equals((CharSequence) obj, (CharSequence) obj2);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.core.view.ViewCompat$4, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass4 extends AccessibilityViewProperty<Boolean> {
        @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
        public final Object a(View view) {
            return Boolean.valueOf(Api28Impl.b(view));
        }

        @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
        public final void b(View view, Object obj) {
            Api28Impl.d(view, ((Boolean) obj).booleanValue());
        }

        @Override // androidx.core.view.ViewCompat.AccessibilityViewProperty
        public final boolean d(Object obj, Object obj2) {
            boolean z;
            boolean z2;
            Boolean bool = (Boolean) obj;
            Boolean bool2 = (Boolean) obj2;
            boolean z3 = false;
            if (bool != null && bool.booleanValue()) {
                z = true;
            } else {
                z = false;
            }
            if (bool2 != null && bool2.booleanValue()) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z == z2) {
                z3 = true;
            }
            return !z3;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class AccessibilityViewProperty<T> {
        public final int a;
        public final Class b;
        public final int c;
        public final int d;

        public AccessibilityViewProperty(int i, Class cls, int i2, int i3) {
            this.a = i;
            this.b = cls;
            this.d = i2;
            this.c = i3;
        }

        public abstract Object a(View view);

        public abstract void b(View view, Object obj);

        public final Object c(View view) {
            if (Build.VERSION.SDK_INT >= this.c) {
                return a(view);
            }
            Object tag = view.getTag(this.a);
            if (this.b.isInstance(tag)) {
                return tag;
            }
            return null;
        }

        public abstract boolean d(Object obj, Object obj2);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Api20Impl {
        public static WindowInsets a(View view, WindowInsets windowInsets) {
            int i = ViewGroupCompat.a;
            return view.dispatchApplyWindowInsets(windowInsets);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Api21Impl {
        public static void a(WindowInsets windowInsets, View view) {
            View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = (View.OnApplyWindowInsetsListener) view.getTag(R.id.tag_window_insets_animation_callback);
            if (onApplyWindowInsetsListener != null) {
                onApplyWindowInsetsListener.onApplyWindowInsets(view, windowInsets);
            }
        }

        public static WindowInsetsCompat b(View view, WindowInsetsCompat windowInsetsCompat, Rect rect) {
            WindowInsets r = windowInsetsCompat.r();
            if (r != null) {
                return WindowInsetsCompat.s(view, view.computeSystemWindowInsets(r, rect));
            }
            rect.setEmpty();
            return windowInsetsCompat;
        }

        public static void c(final View view, final OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
            View.OnApplyWindowInsetsListener onApplyWindowInsetsListener2;
            if (onApplyWindowInsetsListener != null) {
                onApplyWindowInsetsListener2 = new View.OnApplyWindowInsetsListener() { // from class: androidx.core.view.ViewCompat.Api21Impl.1
                    public WindowInsetsCompat a = null;

                    @Override // android.view.View.OnApplyWindowInsetsListener
                    public WindowInsets onApplyWindowInsets(View view2, WindowInsets windowInsets) {
                        WindowInsetsCompat s = WindowInsetsCompat.s(view2, windowInsets);
                        int i = Build.VERSION.SDK_INT;
                        OnApplyWindowInsetsListener onApplyWindowInsetsListener3 = onApplyWindowInsetsListener;
                        if (i < 30) {
                            Api21Impl.a(windowInsets, view);
                            if (s.equals(this.a)) {
                                return onApplyWindowInsetsListener3.i(view2, s).r();
                            }
                        }
                        this.a = s;
                        WindowInsetsCompat i2 = onApplyWindowInsetsListener3.i(view2, s);
                        if (i >= 30) {
                            return i2.r();
                        }
                        Field field = ViewCompat.a;
                        view2.requestApplyInsets();
                        return i2.r();
                    }
                };
            } else {
                onApplyWindowInsetsListener2 = null;
            }
            if (Build.VERSION.SDK_INT < 30) {
                view.setTag(R.id.tag_on_apply_window_listener, onApplyWindowInsetsListener2);
            }
            if (view.getTag(R.id.tag_compat_insets_dispatch) != null) {
                return;
            }
            if (onApplyWindowInsetsListener2 != null) {
                view.setOnApplyWindowInsetsListener(onApplyWindowInsetsListener2);
            } else {
                view.setOnApplyWindowInsetsListener((View.OnApplyWindowInsetsListener) view.getTag(R.id.tag_window_insets_animation_callback));
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Api23Impl {
        public static WindowInsetsCompat a(View view) {
            WindowInsets rootWindowInsets = view.getRootWindowInsets();
            if (rootWindowInsets == null) {
                return null;
            }
            WindowInsetsCompat s = WindowInsetsCompat.s(null, rootWindowInsets);
            WindowInsetsCompat.Impl impl = s.a;
            impl.y(s);
            View rootView = view.getRootView();
            impl.d(rootView);
            impl.p(rootView);
            impl.q();
            return s;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Api26Impl {
        public static int a(View view) {
            return view.getImportantForAutofill();
        }

        public static void b(View view, int i) {
            view.setImportantForAutofill(i);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Api28Impl {
        public static CharSequence a(View view) {
            return view.getAccessibilityPaneTitle();
        }

        public static boolean b(View view) {
            return view.isAccessibilityHeading();
        }

        public static boolean c(View view) {
            return view.isScreenReaderFocusable();
        }

        public static void d(View view, boolean z) {
            view.setAccessibilityHeading(z);
        }

        public static void e(View view, CharSequence charSequence) {
            view.setAccessibilityPaneTitle(charSequence);
        }

        public static void f(View view, boolean z) {
            view.setScreenReaderFocusable(z);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Api29Impl {
        public static View.AccessibilityDelegate a(View view) {
            return view.getAccessibilityDelegate();
        }

        public static void b(View view, Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i, int i2) {
            view.saveAttributeDataForStyleable(context, iArr, attributeSet, typedArray, i, i2);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Api30Impl {
        public static WindowInsets a(View view, WindowInsets windowInsets) {
            return view.dispatchApplyWindowInsets(windowInsets);
        }

        public static CharSequence b(View view) {
            return view.getStateDescription();
        }

        public static void c(View view, CharSequence charSequence) {
            view.setStateDescription(charSequence);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Api31Impl {
        public static String[] a(View view) {
            return view.getReceiveContentMimeTypes();
        }

        public static ContentInfoCompat b(View view, ContentInfoCompat contentInfoCompat) {
            ContentInfo d = contentInfoCompat.a.d();
            Objects.requireNonNull(d);
            ContentInfo performReceiveContent = view.performReceiveContent(d);
            if (performReceiveContent == null) {
                return null;
            }
            if (performReceiveContent == d) {
                return contentInfoCompat;
            }
            return new ContentInfoCompat(new ContentInfoCompat.Compat31Impl(performReceiveContent));
        }
    }

    public static void a(View view, WindowInsetsCompat windowInsetsCompat, Rect rect) {
        Api21Impl.b(view, windowInsetsCompat, rect);
    }

    public static void b(View view, WindowInsetsCompat windowInsetsCompat) {
        WindowInsets a2;
        WindowInsets r = windowInsetsCompat.r();
        if (r != null) {
            if (Build.VERSION.SDK_INT >= 30) {
                a2 = Api30Impl.a(view, r);
            } else {
                a2 = Api20Impl.a(view, r);
            }
            if (!a2.equals(r)) {
                WindowInsetsCompat.s(view, a2);
            }
        }
    }

    public static AccessibilityDelegateCompat c(View view) {
        View.AccessibilityDelegate d2 = d(view);
        if (d2 == null) {
            return null;
        }
        if (d2 instanceof AccessibilityDelegateCompat.AccessibilityDelegateAdapter) {
            return ((AccessibilityDelegateCompat.AccessibilityDelegateAdapter) d2).a;
        }
        return new AccessibilityDelegateCompat(d2);
    }

    public static View.AccessibilityDelegate d(View view) {
        if (Build.VERSION.SDK_INT >= 29) {
            return Api29Impl.a(view);
        }
        if (!b) {
            if (a == null) {
                try {
                    Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                    a = declaredField;
                    declaredField.setAccessible(true);
                } catch (Throwable unused) {
                    b = true;
                    return null;
                }
            }
            try {
                Object obj = a.get(view);
                if (obj instanceof View.AccessibilityDelegate) {
                    return (View.AccessibilityDelegate) obj;
                }
                return null;
            } catch (Throwable unused2) {
                b = true;
                return null;
            }
        }
        return null;
    }

    public static ArrayList e(View view) {
        ArrayList arrayList = (ArrayList) view.getTag(R.id.tag_accessibility_actions);
        if (arrayList == null) {
            ArrayList arrayList2 = new ArrayList();
            view.setTag(R.id.tag_accessibility_actions, arrayList2);
            return arrayList2;
        }
        return arrayList;
    }

    public static int f(RecyclerView recyclerView) {
        return Api26Impl.a(recyclerView);
    }

    public static String[] g(AppCompatEditText appCompatEditText) {
        if (Build.VERSION.SDK_INT >= 31) {
            return Api31Impl.a(appCompatEditText);
        }
        return (String[]) appCompatEditText.getTag(R.id.tag_on_receive_content_mime_types);
    }

    public static WindowInsetsCompat h(View view) {
        return Api23Impl.a(view);
    }

    public static void i(View view, int i) {
        boolean z;
        AccessibilityManager accessibilityManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            if (((CharSequence) new AccessibilityViewProperty(R.id.tag_accessibility_pane_title, CharSequence.class, 8, 28).c(view)) != null && view.isShown() && view.getWindowVisibility() == 0) {
                z = true;
            } else {
                z = false;
            }
            int i2 = 32;
            if (view.getAccessibilityLiveRegion() == 0 && !z) {
                if (i == 32) {
                    AccessibilityEvent obtain = AccessibilityEvent.obtain();
                    view.onInitializeAccessibilityEvent(obtain);
                    obtain.setEventType(32);
                    obtain.setContentChangeTypes(i);
                    obtain.setSource(view);
                    view.onPopulateAccessibilityEvent(obtain);
                    obtain.getText().add((CharSequence) new AccessibilityViewProperty(R.id.tag_accessibility_pane_title, CharSequence.class, 8, 28).c(view));
                    accessibilityManager.sendAccessibilityEvent(obtain);
                    return;
                }
                if (view.getParent() != null) {
                    try {
                        view.getParent().notifySubtreeAccessibilityStateChanged(view, view, i);
                        return;
                    } catch (AbstractMethodError e2) {
                        Log.e("ViewCompat", view.getParent().getClass().getSimpleName().concat(" does not fully implement ViewParent"), e2);
                        return;
                    }
                }
                return;
            }
            AccessibilityEvent obtain2 = AccessibilityEvent.obtain();
            if (!z) {
                i2 = 2048;
            }
            obtain2.setEventType(i2);
            obtain2.setContentChangeTypes(i);
            if (z) {
                obtain2.getText().add((CharSequence) new AccessibilityViewProperty(R.id.tag_accessibility_pane_title, CharSequence.class, 8, 28).c(view));
                if (view.getImportantForAccessibility() == 0) {
                    view.setImportantForAccessibility(1);
                }
            }
            view.sendAccessibilityEventUnchecked(obtain2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ContentInfoCompat j(View view, ContentInfoCompat contentInfoCompat) {
        if (Log.isLoggable("ViewCompat", 3)) {
            Log.d("ViewCompat", "performReceiveContent: " + contentInfoCompat + ", view=" + view.getClass().getSimpleName() + "[" + view.getId() + "]");
        }
        if (Build.VERSION.SDK_INT >= 31) {
            return Api31Impl.b(view, contentInfoCompat);
        }
        OnReceiveContentListener onReceiveContentListener = (OnReceiveContentListener) view.getTag(R.id.tag_on_receive_content_listener);
        OnReceiveContentViewBehavior onReceiveContentViewBehavior = d;
        if (onReceiveContentListener != null) {
            ContentInfoCompat a2 = ((TextViewOnReceiveContentListener) onReceiveContentListener).a(view, contentInfoCompat);
            if (a2 == null) {
                return null;
            }
            if (view instanceof OnReceiveContentViewBehavior) {
                onReceiveContentViewBehavior = (OnReceiveContentViewBehavior) view;
            }
            return onReceiveContentViewBehavior.a(a2);
        }
        if (view instanceof OnReceiveContentViewBehavior) {
            onReceiveContentViewBehavior = (OnReceiveContentViewBehavior) view;
        }
        return onReceiveContentViewBehavior.a(contentInfoCompat);
    }

    public static void k(View view, int i) {
        ArrayList e2 = e(view);
        for (int i2 = 0; i2 < e2.size(); i2++) {
            if (((AccessibilityNodeInfoCompat.AccessibilityActionCompat) e2.get(i2)).a() == i) {
                e2.remove(i2);
                return;
            }
        }
    }

    public static void l(View view, AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat, AccessibilityViewCommand accessibilityViewCommand) {
        AccessibilityNodeInfoCompat.AccessibilityActionCompat accessibilityActionCompat2 = new AccessibilityNodeInfoCompat.AccessibilityActionCompat(null, accessibilityActionCompat.b, null, accessibilityViewCommand, accessibilityActionCompat.c);
        AccessibilityDelegateCompat c2 = c(view);
        if (c2 == null) {
            c2 = new AccessibilityDelegateCompat();
        }
        n(view, c2);
        k(view, accessibilityActionCompat2.a());
        e(view).add(accessibilityActionCompat2);
        i(view, 0);
    }

    public static void m(View view, Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i) {
        if (Build.VERSION.SDK_INT >= 29) {
            Api29Impl.b(view, context, iArr, attributeSet, typedArray, i, 0);
        }
    }

    public static void n(View view, AccessibilityDelegateCompat accessibilityDelegateCompat) {
        View.AccessibilityDelegate accessibilityDelegate;
        if (accessibilityDelegateCompat == null && (d(view) instanceof AccessibilityDelegateCompat.AccessibilityDelegateAdapter)) {
            accessibilityDelegateCompat = new AccessibilityDelegateCompat();
        }
        if (view.getImportantForAccessibility() == 0) {
            view.setImportantForAccessibility(1);
        }
        if (accessibilityDelegateCompat == null) {
            accessibilityDelegate = null;
        } else {
            accessibilityDelegate = accessibilityDelegateCompat.k;
        }
        view.setAccessibilityDelegate(accessibilityDelegate);
    }

    public static void o(View view, CharSequence charSequence) {
        boolean z;
        AccessibilityViewProperty accessibilityViewProperty = new AccessibilityViewProperty(R.id.tag_accessibility_pane_title, CharSequence.class, 8, 28);
        if (Build.VERSION.SDK_INT >= accessibilityViewProperty.c) {
            accessibilityViewProperty.b(view, charSequence);
        } else if (accessibilityViewProperty.d(accessibilityViewProperty.c(view), charSequence)) {
            AccessibilityDelegateCompat c2 = c(view);
            if (c2 == null) {
                c2 = new AccessibilityDelegateCompat();
            }
            n(view, c2);
            view.setTag(accessibilityViewProperty.a, charSequence);
            i(view, accessibilityViewProperty.d);
        }
        AccessibilityPaneVisibilityManager accessibilityPaneVisibilityManager = e;
        if (charSequence != null) {
            WeakHashMap weakHashMap = accessibilityPaneVisibilityManager.j;
            if (view.isShown() && view.getWindowVisibility() == 0) {
                z = true;
            } else {
                z = false;
            }
            weakHashMap.put(view, Boolean.valueOf(z));
            view.addOnAttachStateChangeListener(accessibilityPaneVisibilityManager);
            if (view.isAttachedToWindow()) {
                view.getViewTreeObserver().addOnGlobalLayoutListener(accessibilityPaneVisibilityManager);
                return;
            }
            return;
        }
        accessibilityPaneVisibilityManager.j.remove(view);
        view.removeOnAttachStateChangeListener(accessibilityPaneVisibilityManager);
        view.getViewTreeObserver().removeOnGlobalLayoutListener(accessibilityPaneVisibilityManager);
    }

    public static void p(ViewGroup viewGroup, int i) {
        Api26Impl.b(viewGroup, i);
    }

    public static void q(View view, OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        Api21Impl.c(view, onApplyWindowInsetsListener);
    }

    public static void r(View view, WindowInsetsAnimationCompat.Callback callback) {
        View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = null;
        WindowInsetsAnimationCompat.Impl30.ProxyCallback proxyCallback = null;
        if (Build.VERSION.SDK_INT >= 30) {
            if (callback != null) {
                proxyCallback = new WindowInsetsAnimationCompat.Impl30.ProxyCallback(callback);
            }
            view.setWindowInsetsAnimationCallback(proxyCallback);
            return;
        }
        PathInterpolator pathInterpolator = WindowInsetsAnimationCompat.Impl21.e;
        if (callback != null) {
            onApplyWindowInsetsListener = new WindowInsetsAnimationCompat.Impl21.Impl21OnApplyWindowInsetsListener(view, callback);
        }
        view.setTag(R.id.tag_window_insets_animation_callback, onApplyWindowInsetsListener);
        if (view.getTag(R.id.tag_compat_insets_dispatch) == null && view.getTag(R.id.tag_on_apply_window_listener) == null) {
            view.setOnApplyWindowInsetsListener(onApplyWindowInsetsListener);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class AccessibilityPaneVisibilityManager implements ViewTreeObserver.OnGlobalLayoutListener, View.OnAttachStateChangeListener {
        public final WeakHashMap j = new WeakHashMap();

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(this);
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
        }
    }
}
