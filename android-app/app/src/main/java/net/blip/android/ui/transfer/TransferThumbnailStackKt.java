package net.blip.android.ui.transfer;

import android.content.Context;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import bsarchive.Metadata;
import defpackage.a1;
import defpackage.t2;
import java.util.ArrayList;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import net.blip.libblip.Metadata_DerivedKt;
import net.blip.libblip.frontend.Transfer;
import net.blip.shared.StackLayoutKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TransferThumbnailStackKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v1, types: [androidx.compose.runtime.Composer, androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.util.List, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.util.ArrayList] */
    public static final void a(Modifier modifier, Transfer transfer, Composer composer, int i) {
        int i2;
        boolean z;
        ?? r6;
        boolean z2;
        Pair pair;
        int i3;
        int i4;
        transfer.getClass();
        ?? r13 = (GapComposer) composer;
        r13.X(484602084);
        if ((i & 6) == 0) {
            if (r13.f(modifier)) {
                i4 = 4;
            } else {
                i4 = 2;
            }
            i2 = i4 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            if (r13.h(transfer)) {
                i3 = 32;
            } else {
                i3 = 16;
            }
            i2 |= i3;
        }
        if ((i2 & 19) != 18) {
            z = true;
        } else {
            z = false;
        }
        boolean N = r13.N(i2 & 1, z);
        int i5 = 10;
        if (N) {
            Context context = (Context) r13.j(AndroidCompositionLocals_androidKt.b);
            Metadata metadata = transfer.p;
            EmptyList emptyList = EmptyList.j;
            if (metadata != null) {
                List<String> Q = CollectionsKt.Q(Metadata_DerivedKt.c(metadata));
                r6 = new ArrayList(CollectionsKt.m(Q, 10));
                for (String str : Q) {
                    String a = Metadata_DerivedKt.a(metadata, str);
                    if (a != null) {
                        pair = new Pair(Boolean.TRUE, a);
                    } else {
                        pair = new Pair(Boolean.FALSE, (String) CollectionsKt.z(StringsKt.G(str, new String[]{"/"}, 6)));
                    }
                    r6.add(pair);
                }
            } else {
                r6 = emptyList;
            }
            Object K = r13.K();
            Object obj = Composer.Companion.a;
            if (K == obj) {
                K = SnapshotStateKt.g(emptyList);
                r13.g0(K);
            }
            MutableState mutableState = (MutableState) K;
            if (transfer.v != Transfer.Direction.o && transfer.w != Transfer.Status.u) {
                z2 = false;
            } else {
                z2 = true;
            }
            Boolean valueOf = Boolean.valueOf(z2);
            boolean h = r13.h(r6) | r13.h(context) | r13.g(z2);
            Object K2 = r13.K();
            if (h || K2 == obj) {
                TransferThumbnailStackKt$TransferThumbnailStack$1$1 transferThumbnailStackKt$TransferThumbnailStack$1$1 = new TransferThumbnailStackKt$TransferThumbnailStack$1$1(r6, context, z2, mutableState, null);
                r13.g0(transferThumbnailStackKt$TransferThumbnailStack$1$1);
                K2 = transferThumbnailStackKt$TransferThumbnailStack$1$1;
            }
            EffectsKt.f(r6, valueOf, (Function2) K2, r13);
            StackLayoutKt.a(SizeKt.c(modifier, 1.0f), 0.8f, ComposableLambdaKt.b(-1597532023, new a1(mutableState, 7), r13), r13, 432);
        } else {
            r13.Q();
        }
        RecomposeScopeImpl r = r13.r();
        if (r != null) {
            r.d = new t2(i, i5, modifier, transfer);
        }
    }
}
