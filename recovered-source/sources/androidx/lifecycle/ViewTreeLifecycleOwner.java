package androidx.lifecycle;

import android.view.View;
import androidx.core.viewtree.ViewTree;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ViewTreeLifecycleOwner {
    public static final LifecycleOwner a(View view) {
        LifecycleOwner lifecycleOwner;
        view.getClass();
        while (view != null) {
            Object tag = view.getTag(R.id.view_tree_lifecycle_owner);
            if (tag instanceof LifecycleOwner) {
                lifecycleOwner = (LifecycleOwner) tag;
            } else {
                lifecycleOwner = null;
            }
            if (lifecycleOwner != null) {
                return lifecycleOwner;
            }
            Object a = ViewTree.a(view);
            if (a instanceof View) {
                view = (View) a;
            } else {
                view = null;
            }
        }
        return null;
    }
}
