package androidx.compose.ui.graphics.layer;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ViewLayer$Companion$LayerOutlineProvider$1 extends ViewOutlineProvider {
    @Override // android.view.ViewOutlineProvider
    public final void getOutline(View view, Outline outline) {
        ViewLayer viewLayer;
        Outline outline2;
        if ((view instanceof ViewLayer) && (outline2 = (viewLayer = (ViewLayer) view).n) != null) {
            outline.set(outline2);
            float f = viewLayer.t;
            if (f == 0.0f && viewLayer.u == 0.0f) {
                return;
            }
            outline.offset((int) f, (int) viewLayer.u);
        }
    }
}
