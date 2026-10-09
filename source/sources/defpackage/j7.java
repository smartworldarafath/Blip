package defpackage;

import android.content.Context;
import com.google.firebase.FirebaseApp;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.components.Qualified;
import com.google.firebase.heartbeatinfo.DefaultHeartBeatController;
import com.google.firebase.heartbeatinfo.HeartBeatConsumer;
import com.google.firebase.messaging.FirebaseMessagingRegistrar;
import com.google.firebase.platforminfo.UserAgentPublisher;
import java.util.concurrent.Executor;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class j7 implements ComponentFactory {
    public final /* synthetic */ int j;
    public final /* synthetic */ Qualified k;

    public /* synthetic */ j7(Qualified qualified, int i) {
        this.j = i;
        this.k = qualified;
    }

    @Override // com.google.firebase.components.ComponentFactory
    public final Object d(ComponentContainer componentContainer) {
        int i = this.j;
        Qualified qualified = this.k;
        switch (i) {
            case 0:
                return new DefaultHeartBeatController((Context) componentContainer.a(Context.class), ((FirebaseApp) componentContainer.a(FirebaseApp.class)).c(), componentContainer.d(Qualified.a(HeartBeatConsumer.class)), componentContainer.c(UserAgentPublisher.class), (Executor) componentContainer.f(qualified));
            default:
                return FirebaseMessagingRegistrar.a(qualified, componentContainer);
        }
    }
}
