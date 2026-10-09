package androidx.compose.foundation.text;

import androidx.collection.MutableObjectList;
import androidx.compose.foundation.interaction.FocusInteraction$Focus;
import androidx.compose.foundation.interaction.FocusInteraction$Unfocus;
import androidx.compose.foundation.interaction.HoverInteraction$Enter;
import androidx.compose.foundation.interaction.HoverInteraction$Exit;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.SharedFlowImpl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.text.TextLinkScope$LinksComposables$1$3$1", f = "TextLinkScope.kt", l = {247}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class TextLinkScope$LinksComposables$1$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ LinkStateInteractionSourceObserver o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextLinkScope$LinksComposables$1$3$1(LinkStateInteractionSourceObserver linkStateInteractionSourceObserver, Continuation continuation) {
        super(2, continuation);
        this.o = linkStateInteractionSourceObserver;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((TextLinkScope$LinksComposables$1$3$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new TextLinkScope$LinksComposables$1$3$1(this.o, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
                return Unit.a;
            }
            u2.l("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        this.n = 1;
        final LinkStateInteractionSourceObserver linkStateInteractionSourceObserver = this.o;
        linkStateInteractionSourceObserver.getClass();
        final MutableObjectList mutableObjectList = new MutableObjectList();
        SharedFlowImpl c = linkStateInteractionSourceObserver.a.c();
        FlowCollector flowCollector = new FlowCollector() { // from class: androidx.compose.foundation.text.LinkStateInteractionSourceObserver$collectInteractionsForLinks$2
            @Override // kotlinx.coroutines.flow.FlowCollector
            public final Object r(Object obj2, Continuation continuation) {
                Interaction interaction = (Interaction) obj2;
                boolean z = interaction instanceof HoverInteraction$Enter;
                MutableObjectList mutableObjectList2 = MutableObjectList.this;
                if (!z && !(interaction instanceof FocusInteraction$Focus) && !(interaction instanceof PressInteraction.Press)) {
                    if (interaction instanceof HoverInteraction$Exit) {
                        mutableObjectList2.l(((HoverInteraction$Exit) interaction).a);
                    } else if (interaction instanceof FocusInteraction$Unfocus) {
                        mutableObjectList2.l(((FocusInteraction$Unfocus) interaction).a);
                    } else if (interaction instanceof PressInteraction.Release) {
                        mutableObjectList2.l(((PressInteraction.Release) interaction).a);
                    } else if (interaction instanceof PressInteraction.Cancel) {
                        mutableObjectList2.l(((PressInteraction.Cancel) interaction).a);
                    }
                } else {
                    mutableObjectList2.g(interaction);
                }
                Object[] objArr = mutableObjectList2.a;
                int i2 = mutableObjectList2.b;
                int i3 = 0;
                int i4 = 0;
                while (true) {
                    LinkStateInteractionSourceObserver linkStateInteractionSourceObserver2 = linkStateInteractionSourceObserver;
                    if (i3 < i2) {
                        Interaction interaction2 = (Interaction) objArr[i3];
                        if (interaction2 instanceof HoverInteraction$Enter) {
                            linkStateInteractionSourceObserver2.getClass();
                            i4 |= 2;
                        } else if (interaction2 instanceof FocusInteraction$Focus) {
                            linkStateInteractionSourceObserver2.getClass();
                            i4 |= 1;
                        } else if (interaction2 instanceof PressInteraction.Press) {
                            linkStateInteractionSourceObserver2.getClass();
                            i4 |= 4;
                        }
                        i3++;
                    } else {
                        ((SnapshotMutableIntStateImpl) linkStateInteractionSourceObserver2.b).k(i4);
                        return Unit.a;
                    }
                }
            }
        };
        c.getClass();
        SharedFlowImpl.l(c, flowCollector, this);
        return coroutineSingletons;
    }
}
