package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.internal.Objects;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ApiKey<O extends Api.ApiOptions> {
    public final int a;
    public final Api b;
    public final Api.ApiOptions c;
    public final String d;

    public ApiKey(Api api, Api.ApiOptions apiOptions, String str) {
        this.b = api;
        this.c = apiOptions;
        this.d = str;
        this.a = Arrays.hashCode(new Object[]{api, apiOptions, str});
    }

    public final boolean equals(Object obj) {
        if (obj != null) {
            if (obj != this) {
                if (obj instanceof ApiKey) {
                    ApiKey apiKey = (ApiKey) obj;
                    if (Objects.a(this.b, apiKey.b) && Objects.a(this.c, apiKey.c) && Objects.a(this.d, apiKey.d)) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.a;
    }
}
