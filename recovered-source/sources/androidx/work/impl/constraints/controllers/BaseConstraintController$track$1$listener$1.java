package androidx.work.impl.constraints.controllers;

import androidx.work.impl.constraints.ConstraintListener;
import androidx.work.impl.constraints.ConstraintsState;
import kotlinx.coroutines.channels.ChannelCoroutine;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.channels.SendChannel;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BaseConstraintController$track$1$listener$1 implements ConstraintListener<Object> {
    public final /* synthetic */ BaseConstraintController a;
    public final /* synthetic */ ProducerScope b;

    public BaseConstraintController$track$1$listener$1(BaseConstraintController baseConstraintController, ProducerScope producerScope) {
        this.a = baseConstraintController;
        this.b = producerScope;
    }

    public final void a(Object obj) {
        Object obj2;
        BaseConstraintController baseConstraintController = this.a;
        if (baseConstraintController.d(obj)) {
            obj2 = new ConstraintsState.ConstraintsNotMet(baseConstraintController.c());
        } else {
            obj2 = ConstraintsState.ConstraintsMet.a;
        }
        SendChannel sendChannel = this.b;
        sendChannel.getClass();
        ((ChannelCoroutine) sendChannel).j(obj2);
    }
}
