package androidx.compose.ui.platform;

import android.annotation.SuppressLint;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.compose.ui.node.OwnedLayer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@SuppressLint({"ViewConstructor"})
/* loaded from: classes.dex */
public abstract class ViewLayer extends View implements OwnedLayer {
    public static final /* synthetic */ int j = 0;

    static {
        new ViewOutlineProvider();
    }
}
