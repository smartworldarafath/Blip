package androidx.compose.foundation.text.selection;

import androidx.compose.ui.text.TextRange;
import defpackage.u2;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.text.selection.TextFieldSelectionManager$contextMenuAreaModifier$2", f = "TextFieldSelectionManager.kt", l = {241, 243}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class TextFieldSelectionManager$contextMenuAreaModifier$2 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ TextFieldSelectionManager o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextFieldSelectionManager$contextMenuAreaModifier$2(TextFieldSelectionManager textFieldSelectionManager, Continuation continuation) {
        super(1, continuation);
        this.o = textFieldSelectionManager;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        return new TextFieldSelectionManager$contextMenuAreaModifier$2(this.o, (Continuation) obj).v(Unit.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0069, code lost:
    
        if (r13 == r0) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x006b, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0028, code lost:
    
        if (r6.t(r13) == r0) goto L28;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        Object obj2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        Unit unit = Unit.a;
        TextFieldSelectionManager textFieldSelectionManager = this.o;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    ResultKt.b(obj);
                    textFieldSelectionManager.A = true;
                    return unit;
                }
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        } else {
            ResultKt.b(obj);
            this.n = 1;
        }
        Pair a = TextFieldSelectionManager.a(textFieldSelectionManager);
        if (a != null) {
            String str = (String) a.j;
            long j = ((TextRange) a.k).a;
            PlatformSelectionBehaviors platformSelectionBehaviors = textFieldSelectionManager.i;
            if (platformSelectionBehaviors != null) {
                this.n = 2;
                PlatformSelectionBehaviorsImpl platformSelectionBehaviorsImpl = (PlatformSelectionBehaviorsImpl) platformSelectionBehaviors;
                if (str.length() == 0 || TextRange.c(j)) {
                    obj2 = unit;
                } else {
                    obj2 = BuildersKt.e(platformSelectionBehaviorsImpl.a, new PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2(platformSelectionBehaviorsImpl, new PlatformSelectionBehaviorsImpl$onShowContextMenuOrSelectionToolbar$2(j, platformSelectionBehaviorsImpl, str, null), null), this);
                }
                if (obj2 != coroutineSingletons) {
                    obj2 = unit;
                }
            }
        }
        textFieldSelectionManager.A = true;
        return unit;
    }
}
