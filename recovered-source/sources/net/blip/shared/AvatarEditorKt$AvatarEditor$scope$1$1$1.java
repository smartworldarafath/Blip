package net.blip.shared;

import androidx.compose.runtime.MutableState;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.u2;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import net.blip.shared.ContentPicker$ContentType;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "net.blip.shared.AvatarEditorKt$AvatarEditor$scope$1$1$1", f = "AvatarEditor.kt", l = {29}, m = "invokeSuspend", v = PreferencesProto$Value.FLOAT_FIELD_NUMBER)
/* loaded from: classes.dex */
final class AvatarEditorKt$AvatarEditor$scope$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ Function2 o;
    public final /* synthetic */ Function1 p;
    public final /* synthetic */ MutableState q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AvatarEditorKt$AvatarEditor$scope$1$1$1(Function2 function2, Function1 function1, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.o = function2;
        this.p = function1;
        this.q = mutableState;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((AvatarEditorKt$AvatarEditor$scope$1$1$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new AvatarEditorKt$AvatarEditor$scope$1$1$1(this.o, this.p, this.q, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            ContentPicker$Options contentPicker$Options = new ContentPicker$Options(ContentPicker$ContentType.Image.a, null, 12);
            this.n = 1;
            obj = this.o.n(contentPicker$Options, this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        String str = (String) CollectionsKt.t((List) obj);
        Unit unit = Unit.a;
        if (str == null) {
            return unit;
        }
        this.p.b(str);
        this.q.setValue(Boolean.TRUE);
        return unit;
    }
}
