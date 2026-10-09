package androidx.compose.foundation.text.selection;

import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import androidx.compose.ui.text.input.OffsetMapping;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.text.selection.TextFieldSelectionManager$maybeSuggestSelection$1", f = "TextFieldSelectionManager.kt", l = {571}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class TextFieldSelectionManager$maybeSuggestSelection$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ PlatformSelectionBehaviors o;
    public final /* synthetic */ String p;
    public final /* synthetic */ long q;
    public final /* synthetic */ TextRange r;
    public final /* synthetic */ TextFieldSelectionManager s;
    public final /* synthetic */ OffsetMapping t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextFieldSelectionManager$maybeSuggestSelection$1(PlatformSelectionBehaviors platformSelectionBehaviors, String str, long j, TextRange textRange, TextFieldSelectionManager textFieldSelectionManager, OffsetMapping offsetMapping, Continuation continuation) {
        super(2, continuation);
        this.o = platformSelectionBehaviors;
        this.p = str;
        this.q = j;
        this.r = textRange;
        this.s = textFieldSelectionManager;
        this.t = offsetMapping;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((TextFieldSelectionManager$maybeSuggestSelection$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new TextFieldSelectionManager$maybeSuggestSelection$1(this.o, this.p, this.q, this.r, this.s, this.t, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0047 A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        String str = this.p;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            this.n = 1;
            PlatformSelectionBehaviorsImpl platformSelectionBehaviorsImpl = (PlatformSelectionBehaviorsImpl) this.o;
            platformSelectionBehaviorsImpl.getClass();
            if (str.length() != 0) {
                long j = this.q;
                if (!TextRange.c(j)) {
                    obj = BuildersKt.e(platformSelectionBehaviorsImpl.a, new PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2(platformSelectionBehaviorsImpl, new PlatformSelectionBehaviorsImpl$suggestSelectionForLongPressOrDoubleClick$2(j, platformSelectionBehaviorsImpl, str, null), null), this);
                    if (obj == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
            }
            obj = null;
            if (obj == coroutineSingletons) {
            }
        }
        TextRange textRange = (TextRange) obj;
        Unit unit = Unit.a;
        if (textRange != null) {
            long j2 = textRange.a;
            OffsetMapping offsetMapping = this.t;
            long a = TextRangeKt.a(offsetMapping.a((int) (j2 >> 32)), offsetMapping.a((int) (j2 & 4294967295L)));
            if (!TextRange.a(a, this.r)) {
                TextFieldSelectionManager textFieldSelectionManager = this.s;
                if (Intrinsics.a(textFieldSelectionManager.o().a.k, str) && offsetMapping == textFieldSelectionManager.b) {
                    textFieldSelectionManager.c.b(TextFieldSelectionManager.e(textFieldSelectionManager.o().a, a));
                    textFieldSelectionManager.v = new TextRange(a);
                }
            }
        }
        return unit;
    }
}
