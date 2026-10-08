package androidx.customview.poolingcontainer;

import android.view.View;
import androidx.compose.ui.platform.AbstractComposeView;
import androidx.core.view.ViewGroupKt$children$1;
import androidx.core.view.ViewGroupKt$iterator$1;
import androidx.core.view.ViewKt;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.pi;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.collections.CollectionsKt;
import kotlin.sequences.SequencesKt;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PoolingContainer {
    public static final void a(AbstractComposeView abstractComposeView, pi piVar) {
        d(abstractComposeView).a.add(piVar);
    }

    public static final void b(View view) {
        view.getClass();
        Iterator e = SequencesKt.e(ViewKt.a(view).a);
        while (e.hasNext()) {
            ArrayList arrayList = d((View) e.next()).a;
            for (int u = CollectionsKt.u(arrayList); -1 < u; u--) {
                ((pi) ((PoolingContainerListener) arrayList.get(u))).a.e();
            }
        }
    }

    public static final void c(RecyclerView recyclerView) {
        Iterator it = new ViewGroupKt$children$1(recyclerView).iterator();
        while (true) {
            ViewGroupKt$iterator$1 viewGroupKt$iterator$1 = (ViewGroupKt$iterator$1) it;
            if (viewGroupKt$iterator$1.hasNext()) {
                ArrayList arrayList = d((View) viewGroupKt$iterator$1.next()).a;
                for (int u = CollectionsKt.u(arrayList); -1 < u; u--) {
                    ((pi) ((PoolingContainerListener) arrayList.get(u))).a.e();
                }
            } else {
                return;
            }
        }
    }

    public static final PoolingContainerListenerHolder d(View view) {
        PoolingContainerListenerHolder poolingContainerListenerHolder = (PoolingContainerListenerHolder) view.getTag(R.id.pooling_container_listener_holder_tag);
        if (poolingContainerListenerHolder == null) {
            PoolingContainerListenerHolder poolingContainerListenerHolder2 = new PoolingContainerListenerHolder();
            view.setTag(R.id.pooling_container_listener_holder_tag, poolingContainerListenerHolder2);
            return poolingContainerListenerHolder2;
        }
        return poolingContainerListenerHolder;
    }

    public static final void e(View view, pi piVar) {
        d(view).a.remove(piVar);
    }
}
