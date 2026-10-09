package androidx.compose.ui.platform;

import android.view.View;
import android.view.ViewGroup;
import androidx.core.viewtree.ViewTree;
import java.lang.ref.WeakReference;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ComposeView_androidKt {
    public static final int a(View view, int i) {
        int i2 = 0;
        int i3 = Integer.MAX_VALUE;
        Object obj = null;
        while (view != null) {
            Object tag = view.getTag(i);
            if (tag != null) {
                if (obj == null) {
                    obj = tag;
                } else if (!tag.equals(obj)) {
                    break;
                }
                i3 = i2;
            }
            i2++;
            Object a = ViewTree.a(view);
            if (a instanceof View) {
                view = (View) a;
            } else {
                view = null;
            }
        }
        return i3;
    }

    public static final View b(View view) {
        View view2;
        if (!view.isAttachedToWindow()) {
            return view;
        }
        int min = Math.min(a(view, R.id.view_tree_lifecycle_owner), a(view, R.id.view_tree_saved_state_registry_owner));
        View view3 = view;
        int i = 0;
        View view4 = view3;
        while (view != null) {
            if (i == min) {
                if (!(view.getParent() instanceof ViewGroup)) {
                    return view3;
                }
            } else if (c(view) == null) {
                i++;
                Object a = ViewTree.a(view);
                if (a instanceof View) {
                    view2 = (View) a;
                } else {
                    view2 = null;
                }
                View view5 = view3;
                view3 = view;
                view = view2;
                view4 = view5;
            }
            return view;
        }
        return view4;
    }

    public static final ComposeViewContext c(View view) {
        WeakReference weakReference;
        Object tag = view.getTag(R.id.androidx_compose_ui_view_compose_view_context);
        if (tag instanceof WeakReference) {
            weakReference = (WeakReference) tag;
        } else {
            weakReference = null;
        }
        if (weakReference == null) {
            return null;
        }
        return (ComposeViewContext) weakReference.get();
    }
}
