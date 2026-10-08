package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;
import java.util.Iterator;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class ViewGroupKt$descendants$1$1 implements Function1<View, Iterator<? extends View>> {
    public static final ViewGroupKt$descendants$1$1 j = new Object();

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        ViewGroup viewGroup;
        View view = (View) obj;
        if (view instanceof ViewGroup) {
            viewGroup = (ViewGroup) view;
        } else {
            viewGroup = null;
        }
        if (viewGroup == null) {
            return null;
        }
        return new ViewGroupKt$children$1(viewGroup).iterator();
    }
}
