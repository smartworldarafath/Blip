package androidx.compose.foundation;

import androidx.collection.MutableLongObjectMap;
import androidx.compose.foundation.interaction.PressInteraction;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class AbstractClickableNode$focusableNode$1 extends FunctionReferenceImpl implements Function1<Boolean, Unit> {
    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        AbstractClickableNode abstractClickableNode = (AbstractClickableNode) this.k;
        MutableLongObjectMap mutableLongObjectMap = abstractClickableNode.N;
        if (booleanValue) {
            abstractClickableNode.j1();
        } else {
            if (abstractClickableNode.z != null) {
                Object[] objArr = mutableLongObjectMap.c;
                long[] jArr = mutableLongObjectMap.a;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i = 0;
                    while (true) {
                        long j = jArr[i];
                        if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i2 = 8 - ((~(i - length)) >>> 31);
                            for (int i3 = 0; i3 < i2; i3++) {
                                if ((255 & j) < 128) {
                                    BuildersKt.c(abstractClickableNode.M0(), null, null, new AbstractClickableNode$onFocusChange$1$1(abstractClickableNode, (PressInteraction.Press) objArr[(i << 3) + i3], null), 3);
                                }
                                j >>= 8;
                            }
                            if (i2 != 8) {
                                break;
                            }
                        }
                        if (i == length) {
                            break;
                        }
                        i++;
                    }
                }
                PressInteraction.Press press = abstractClickableNode.P;
                if (press != null) {
                    BuildersKt.c(abstractClickableNode.M0(), null, null, new AbstractClickableNode$onFocusChange$2$1(abstractClickableNode, press, null), 3);
                }
            }
            mutableLongObjectMap.c();
            abstractClickableNode.P = null;
            abstractClickableNode.k1();
        }
        return Unit.a;
    }
}
