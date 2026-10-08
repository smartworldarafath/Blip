package androidx.compose.ui.text.platform;

import android.text.style.ClickableSpan;
import android.view.View;
import androidx.compose.ui.text.LinkAnnotation;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class ComposeClickableSpan extends ClickableSpan {
    public final LinkAnnotation j;

    public ComposeClickableSpan(LinkAnnotation linkAnnotation) {
        this.j = linkAnnotation;
    }

    @Override // android.text.style.ClickableSpan
    public final void onClick(View view) {
        this.j.getClass();
    }
}
