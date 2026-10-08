package androidx.lifecycle;

import android.view.View;
import androidx.core.viewtree.ViewTree;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ViewTreeViewModelStoreOwner {
    public static final ViewModelStoreOwner a(View view) {
        ViewModelStoreOwner viewModelStoreOwner;
        view.getClass();
        while (view != null) {
            Object tag = view.getTag(R.id.view_tree_view_model_store_owner);
            if (tag instanceof ViewModelStoreOwner) {
                viewModelStoreOwner = (ViewModelStoreOwner) tag;
            } else {
                viewModelStoreOwner = null;
            }
            if (viewModelStoreOwner != null) {
                return viewModelStoreOwner;
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
