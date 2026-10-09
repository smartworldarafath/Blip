package com.google.android.gms.internal.cloudmessaging;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.zabk;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class zzh extends Api.AbstractClientBuilder {
    @Override // com.google.android.gms.common.api.Api.AbstractClientBuilder
    public final Api.Client b(Context context, Looper looper, ClientSettings clientSettings, Object obj, zabk zabkVar, zabk zabkVar2) {
        return new GmsClient(context, looper, 457, clientSettings, zabkVar, zabkVar2);
    }
}
