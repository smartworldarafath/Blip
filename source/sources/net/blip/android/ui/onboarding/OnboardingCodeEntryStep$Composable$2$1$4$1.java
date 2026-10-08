package net.blip.android.ui.onboarding;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.focus.FocusRequesterModifierNode;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.focus.FocusTransactionsKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.android.ui.onboarding.OnboardingCodeEntryStep$Composable$2$1$4$1", f = "OnboardingCodeEntryStep.kt", l = {}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
final class OnboardingCodeEntryStep$Composable$2$1$4$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public final /* synthetic */ Function1 n;
    public final /* synthetic */ FocusRequester o;
    public final /* synthetic */ MutableState p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OnboardingCodeEntryStep$Composable$2$1$4$1(Function1 function1, FocusRequester focusRequester, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.n = function1;
        this.o = focusRequester;
        this.p = mutableState;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        OnboardingCodeEntryStep$Composable$2$1$4$1 onboardingCodeEntryStep$Composable$2$1$4$1 = (OnboardingCodeEntryStep$Composable$2$1$4$1) s((CoroutineScope) obj, (Continuation) obj2);
        Unit unit = Unit.a;
        onboardingCodeEntryStep$Composable$2$1$4$1.v(unit);
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new OnboardingCodeEntryStep$Composable$2$1$4$1(this.n, this.o, this.p, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x00ca, code lost:
    
        androidx.compose.ui.node.DelegatableNodeKt.a(r3, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0124, code lost:
    
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x00b5, code lost:
    
        r3.b(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0097, code lost:
    
        r2 = (androidx.compose.ui.Modifier.Node) r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x009d, code lost:
    
        if (r2.j.w != false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x009f, code lost:
    
        androidx.compose.ui.internal.InlineClassHelperKt.b("visitChildren called on an unattached node");
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00a4, code lost:
    
        r3 = new androidx.compose.runtime.collection.MutableVector(new androidx.compose.ui.Modifier.Node[16]);
        r2 = r2.j;
        r5 = r2.o;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00af, code lost:
    
        if (r5 != null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00b1, code lost:
    
        androidx.compose.ui.node.DelegatableNodeKt.a(r3, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00b8, code lost:
    
        r2 = r3.l;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00ba, code lost:
    
        if (r2 == 0) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00bc, code lost:
    
        r2 = (androidx.compose.ui.Modifier.Node) r3.k(r2 - 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00c8, code lost:
    
        if ((r2.m & 1024) != 0) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00ce, code lost:
    
        if (r2 == null) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00d4, code lost:
    
        if ((r2.l & 1024) == 0) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0121, code lost:
    
        r2 = r2.o;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00d6, code lost:
    
        r5 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00d7, code lost:
    
        if (r2 == null) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00db, code lost:
    
        if ((r2 instanceof androidx.compose.ui.focus.FocusTargetNode) == false) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00ea, code lost:
    
        if ((r2.l & 1024) == 0) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00ee, code lost:
    
        if ((r2 instanceof androidx.compose.ui.node.DelegatingNode) == false) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00f0, code lost:
    
        r8 = ((androidx.compose.ui.node.DelegatingNode) r2).y;
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00f6, code lost:
    
        if (r8 == null) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x00fc, code lost:
    
        if ((r8.l & 1024) == 0) goto L116;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00fe, code lost:
    
        r9 = r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0100, code lost:
    
        if (r9 != 1) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0102, code lost:
    
        r2 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0116, code lost:
    
        r8 = r8.o;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0104, code lost:
    
        if (r5 != null) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0106, code lost:
    
        r5 = new androidx.compose.runtime.collection.MutableVector(new androidx.compose.ui.Modifier.Node[16]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x010d, code lost:
    
        if (r2 == null) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x010f, code lost:
    
        r5.b(r2);
        r2 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0113, code lost:
    
        r5.b(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0119, code lost:
    
        if (r9 != 1) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x011c, code lost:
    
        r2 = androidx.compose.ui.node.DelegatableNodeKt.b(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x00e3, code lost:
    
        if (androidx.compose.ui.focus.FocusTransactionsKt.a((androidx.compose.ui.focus.FocusTargetNode) r2) == false) goto L78;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ResultKt.b(obj);
        MutableState mutableState = this.p;
        if (((TextFieldValue) mutableState.getValue()).a.k.length() == 6) {
            this.n.b(((TextFieldValue) mutableState.getValue()).a.k);
            MutableVector mutableVector = this.o.a;
            int i = mutableVector.l;
            if (i == 0) {
                System.out.println((Object) "FocusRelatedWarning: \n   FocusRequester is not initialized. Here are some possible fixes:\n\n   1. Remember the FocusRequester: val focusRequester = remember { FocusRequester() }\n   2. Did you forget to add a Modifier.focusRequester() ?\n   3. Are you attempting to request focus during composition? Focus requests should be made in\n   response to some event. Eg Modifier.clickable { focusRequester.requestFocus() }\n");
            } else {
                Object[] objArr = mutableVector.j;
                int i2 = 0;
                loop0: while (i2 < i) {
                    Object obj2 = (FocusRequesterModifierNode) objArr[i2];
                    Modifier.Node node = ((Modifier.Node) obj2).j;
                    MutableVector mutableVector2 = null;
                    while (true) {
                        if (node == null) {
                            break;
                        }
                        if (node instanceof FocusTargetNode) {
                            if (FocusTransactionsKt.a((FocusTargetNode) node)) {
                                break loop0;
                            }
                        } else if ((node.l & 1024) != 0 && (node instanceof DelegatingNode)) {
                            int i3 = 0;
                            for (Modifier.Node node2 = ((DelegatingNode) node).y; node2 != null; node2 = node2.o) {
                                if ((node2.l & 1024) != 0) {
                                    i3++;
                                    if (i3 == 1) {
                                        node = node2;
                                    } else {
                                        if (mutableVector2 == null) {
                                            mutableVector2 = new MutableVector(new Modifier.Node[16]);
                                        }
                                        if (node != null) {
                                            mutableVector2.b(node);
                                            node = null;
                                        }
                                        mutableVector2.b(node2);
                                    }
                                }
                            }
                            if (i3 == 1) {
                            }
                        }
                        node = DelegatableNodeKt.b(mutableVector2);
                    }
                }
            }
        }
        return Unit.a;
    }
}
