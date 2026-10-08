package androidx.compose.foundation.pager;

import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import java.util.List;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class c implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;

    public /* synthetic */ c(int i, Object obj) {
        this.j = i;
        this.k = obj;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        int i = this.j;
        Object obj = this.k;
        switch (i) {
            case 0:
                SaverKt$Saver$1 saverKt$Saver$1 = DefaultPagerState.G;
                Object obj2 = ((List) obj).get(2);
                obj2.getClass();
                return (Integer) obj2;
            default:
                PagerStateKt$UnitDensity$1 pagerStateKt$UnitDensity$1 = PagerStateKt.a;
                return new DefaultPagerState(0, 0.0f, (Function0) obj);
        }
    }
}
