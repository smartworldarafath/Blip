package net.blip.android.ui.peerpicker;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import defpackage.b0;
import defpackage.i1;
import defpackage.j1;
import defpackage.jb;
import defpackage.k8;
import java.util.ArrayList;
import java.util.List;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import net.blip.android.ui.components.AlertDialogKt;
import net.blip.libblip.Peer;
import net.blip.libblip.PeerPickerContent;
import net.blip.libblip.frontend.Search;
import net.blip.shared.SelectableLazyItemScope;
import net.blip.shared.SelectableLazyListScope;
import net.blip.shared.SelectionListKt$items$4;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AndroidPeerPickerListItemsKt {
    public static final void a(Peer peer, Function0 function0, Function0 function02, Composer composer, int i) {
        int i2;
        boolean z;
        int i3;
        int i4;
        int i5;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(2112058608);
        if ((i & 6) == 0) {
            if (gapComposer.h(peer)) {
                i5 = 4;
            } else {
                i5 = 2;
            }
            i2 = i5 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer.h(function0)) {
                i4 = 32;
            } else {
                i4 = 16;
            }
            i2 |= i4;
        }
        if ((i & 384) == 0) {
            if (gapComposer.h(function02)) {
                i3 = 256;
            } else {
                i3 = 128;
            }
            i2 |= i3;
        }
        if ((i2 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i2 & 1, z)) {
            String b = peer.b();
            b.getClass();
            AlertDialogKt.a("Send to " + b + " for the first time?", jb.h("Just checking, because you’ve never sent files to ", peer.b(), " (", peer.a(), ") before!"), false, new Pair("Send", function0), new Pair("Cancel", function02), function02, gapComposer, 458752 & (i2 << 9), 4);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new j1(peer, function0, function02, i, 0);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.Object, net.blip.shared.SelectionListKt$items$7] */
    /* JADX WARN: Type inference failed for: r1v7, types: [net.blip.shared.SelectionListKt$items$3] */
    /* JADX WARN: Type inference failed for: r1v8, types: [net.blip.shared.SelectionListKt$items$3] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object, net.blip.shared.SelectionListKt$items$7] */
    /* JADX WARN: Type inference failed for: r3v3, types: [net.blip.shared.SelectionListKt$items$3] */
    /* JADX WARN: Type inference failed for: r4v1, types: [net.blip.shared.SelectionListKt$items$3] */
    /* JADX WARN: Type inference failed for: r9v10, types: [java.lang.Object, net.blip.shared.SelectionListKt$items$7] */
    /* JADX WARN: Type inference failed for: r9v12, types: [java.lang.Object, net.blip.shared.SelectionListKt$items$7] */
    public static final void b(SelectableLazyListScope selectableLazyListScope, PeerPickerContent peerPickerContent, boolean z, Function0 function0, Function1 function1, Function1 function12, Function1 function13) {
        selectableLazyListScope.getClass();
        peerPickerContent.getClass();
        function1.getClass();
        final ComposableLambdaImpl composableLambdaImpl = new ComposableLambdaImpl(1160526252, true, new i1(z, function1, function12, function13, peerPickerContent));
        ComposableLambdaImpl composableLambdaImpl2 = new ComposableLambdaImpl(-1963880497, true, new b0(1, function0));
        if (peerPickerContent instanceof PeerPickerContent.Overview) {
            PeerPickerContent.Overview overview = (PeerPickerContent.Overview) peerPickerContent;
            final List list = overview.b;
            final List list2 = overview.a;
            if (overview.c) {
                selectableLazyListScope.c(ComposableSingletons$AndroidPeerPickerListItemsKt.c);
            } else {
                selectableLazyListScope.a(list2.size(), new Function1<Integer, Object>() { // from class: net.blip.shared.SelectionListKt$items$3
                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj) {
                        list2.get(((Number) obj).intValue());
                        return null;
                    }
                }, new SelectionListKt$items$4(new Object(), list2), new ComposableLambdaImpl(341884658, true, new Function4<SelectableLazyItemScope, Integer, Composer, Integer, Unit>() { // from class: net.blip.shared.SelectionListKt$items$5
                    @Override // kotlin.jvm.functions.Function4
                    public final Object j(Object obj, Object obj2, Object obj3, Object obj4) {
                        int i;
                        boolean z2;
                        int i2;
                        int i3;
                        SelectableLazyItemScope selectableLazyItemScope = (SelectableLazyItemScope) obj;
                        int intValue = ((Number) obj2).intValue();
                        Composer composer = (Composer) obj3;
                        int intValue2 = ((Number) obj4).intValue();
                        selectableLazyItemScope.getClass();
                        if ((intValue2 & 6) == 0) {
                            if (((GapComposer) composer).f(selectableLazyItemScope)) {
                                i3 = 4;
                            } else {
                                i3 = 2;
                            }
                            i = i3 | intValue2;
                        } else {
                            i = intValue2;
                        }
                        if ((intValue2 & 48) == 0) {
                            if (((GapComposer) composer).d(intValue)) {
                                i2 = 32;
                            } else {
                                i2 = 16;
                            }
                            i |= i2;
                        }
                        if ((i & 147) != 146) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        GapComposer gapComposer = (GapComposer) composer;
                        if (gapComposer.N(i & 1, z2)) {
                            ComposableLambdaImpl.this.j(selectableLazyItemScope, list2.get(intValue), gapComposer, Integer.valueOf(i & 14));
                        } else {
                            gapComposer.Q();
                        }
                        return Unit.a;
                    }
                }));
                selectableLazyListScope.a(list.size(), new Function1<Integer, Object>() { // from class: net.blip.shared.SelectionListKt$items$3
                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj) {
                        list.get(((Number) obj).intValue());
                        return null;
                    }
                }, new SelectionListKt$items$4(new Object(), list), new ComposableLambdaImpl(341884658, true, new Function4<SelectableLazyItemScope, Integer, Composer, Integer, Unit>() { // from class: net.blip.shared.SelectionListKt$items$5
                    @Override // kotlin.jvm.functions.Function4
                    public final Object j(Object obj, Object obj2, Object obj3, Object obj4) {
                        int i;
                        boolean z2;
                        int i2;
                        int i3;
                        SelectableLazyItemScope selectableLazyItemScope = (SelectableLazyItemScope) obj;
                        int intValue = ((Number) obj2).intValue();
                        Composer composer = (Composer) obj3;
                        int intValue2 = ((Number) obj4).intValue();
                        selectableLazyItemScope.getClass();
                        if ((intValue2 & 6) == 0) {
                            if (((GapComposer) composer).f(selectableLazyItemScope)) {
                                i3 = 4;
                            } else {
                                i3 = 2;
                            }
                            i = i3 | intValue2;
                        } else {
                            i = intValue2;
                        }
                        if ((intValue2 & 48) == 0) {
                            if (((GapComposer) composer).d(intValue)) {
                                i2 = 32;
                            } else {
                                i2 = 16;
                            }
                            i |= i2;
                        }
                        if ((i & 147) != 146) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        GapComposer gapComposer = (GapComposer) composer;
                        if (gapComposer.N(i & 1, z2)) {
                            ComposableLambdaImpl.this.j(selectableLazyItemScope, list.get(intValue), gapComposer, Integer.valueOf(i & 14));
                        } else {
                            gapComposer.Q();
                        }
                        return Unit.a;
                    }
                }));
            }
            if (list2.isEmpty()) {
                selectableLazyListScope.c(ComposableSingletons$AndroidPeerPickerListItemsKt.d);
            }
            if (list.isEmpty()) {
                selectableLazyListScope.c(ComposableSingletons$AndroidPeerPickerListItemsKt.e);
                return;
            }
            return;
        }
        if (peerPickerContent instanceof PeerPickerContent.SearchResults) {
            PeerPickerContent.SearchResults searchResults = (PeerPickerContent.SearchResults) peerPickerContent;
            Search.Status status = searchResults.c;
            final ArrayList arrayList = searchResults.b;
            final ArrayList arrayList2 = searchResults.a;
            selectableLazyListScope.a(arrayList2.size(), new Function1<Integer, Object>() { // from class: net.blip.shared.SelectionListKt$items$3
                @Override // kotlin.jvm.functions.Function1
                public final Object b(Object obj) {
                    arrayList2.get(((Number) obj).intValue());
                    return null;
                }
            }, new SelectionListKt$items$4(new Object(), arrayList2), new ComposableLambdaImpl(341884658, true, new Function4<SelectableLazyItemScope, Integer, Composer, Integer, Unit>() { // from class: net.blip.shared.SelectionListKt$items$5
                @Override // kotlin.jvm.functions.Function4
                public final Object j(Object obj, Object obj2, Object obj3, Object obj4) {
                    int i;
                    boolean z2;
                    int i2;
                    int i3;
                    SelectableLazyItemScope selectableLazyItemScope = (SelectableLazyItemScope) obj;
                    int intValue = ((Number) obj2).intValue();
                    Composer composer = (Composer) obj3;
                    int intValue2 = ((Number) obj4).intValue();
                    selectableLazyItemScope.getClass();
                    if ((intValue2 & 6) == 0) {
                        if (((GapComposer) composer).f(selectableLazyItemScope)) {
                            i3 = 4;
                        } else {
                            i3 = 2;
                        }
                        i = i3 | intValue2;
                    } else {
                        i = intValue2;
                    }
                    if ((intValue2 & 48) == 0) {
                        if (((GapComposer) composer).d(intValue)) {
                            i2 = 32;
                        } else {
                            i2 = 16;
                        }
                        i |= i2;
                    }
                    if ((i & 147) != 146) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    GapComposer gapComposer = (GapComposer) composer;
                    if (gapComposer.N(i & 1, z2)) {
                        ComposableLambdaImpl.this.j(selectableLazyItemScope, arrayList2.get(intValue), gapComposer, Integer.valueOf(i & 14));
                    } else {
                        gapComposer.Q();
                    }
                    return Unit.a;
                }
            }));
            if (!arrayList.isEmpty()) {
                selectableLazyListScope.c(new ComposableLambdaImpl(1091155878, true, new b0(7, peerPickerContent)));
                selectableLazyListScope.a(arrayList.size(), new Function1<Integer, Object>() { // from class: net.blip.shared.SelectionListKt$items$3
                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj) {
                        arrayList.get(((Number) obj).intValue());
                        return null;
                    }
                }, new SelectionListKt$items$4(new Object(), arrayList), new ComposableLambdaImpl(341884658, true, new Function4<SelectableLazyItemScope, Integer, Composer, Integer, Unit>() { // from class: net.blip.shared.SelectionListKt$items$5
                    @Override // kotlin.jvm.functions.Function4
                    public final Object j(Object obj, Object obj2, Object obj3, Object obj4) {
                        int i;
                        boolean z2;
                        int i2;
                        int i3;
                        SelectableLazyItemScope selectableLazyItemScope = (SelectableLazyItemScope) obj;
                        int intValue = ((Number) obj2).intValue();
                        Composer composer = (Composer) obj3;
                        int intValue2 = ((Number) obj4).intValue();
                        selectableLazyItemScope.getClass();
                        if ((intValue2 & 6) == 0) {
                            if (((GapComposer) composer).f(selectableLazyItemScope)) {
                                i3 = 4;
                            } else {
                                i3 = 2;
                            }
                            i = i3 | intValue2;
                        } else {
                            i = intValue2;
                        }
                        if ((intValue2 & 48) == 0) {
                            if (((GapComposer) composer).d(intValue)) {
                                i2 = 32;
                            } else {
                                i2 = 16;
                            }
                            i |= i2;
                        }
                        if ((i & 147) != 146) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        GapComposer gapComposer = (GapComposer) composer;
                        if (gapComposer.N(i & 1, z2)) {
                            ComposableLambdaImpl.this.j(selectableLazyItemScope, arrayList.get(intValue), gapComposer, Integer.valueOf(i & 14));
                        } else {
                            gapComposer.Q();
                        }
                        return Unit.a;
                    }
                }));
            }
            if (status == Search.Status.p && searchResults.d) {
                selectableLazyListScope.c(ComposableSingletons$AndroidPeerPickerListItemsKt.g);
            }
            if (status == Search.Status.o) {
                selectableLazyListScope.c(composableLambdaImpl2);
                return;
            }
            return;
        }
        k8.e();
    }
}
