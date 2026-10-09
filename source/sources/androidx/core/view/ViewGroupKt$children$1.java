package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;
import java.util.Iterator;
import kotlin.sequences.Sequence;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ViewGroupKt$children$1 implements Sequence<View> {
    public final /* synthetic */ ViewGroup a;

    public ViewGroupKt$children$1(ViewGroup viewGroup) {
        this.a = viewGroup;
    }

    @Override // kotlin.sequences.Sequence
    public final Iterator iterator() {
        return new ViewGroupKt$iterator$1(this.a);
    }
}
