package com.google.android.datatransport.runtime.backends;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
class MetadataBackendRegistry implements BackendRegistry {
    public final BackendFactoryProvider a;
    public final CreationContextFactory b;
    public final HashMap c;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class BackendFactoryProvider {
        public final Context a;
        public Map b = null;

        public BackendFactoryProvider(Context context) {
            this.a = context;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x003a  */
        /* JADX WARN: Removed duplicated region for block: B:12:0x0042  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final BackendFactory a(String str) {
            Bundle bundle;
            Map map;
            PackageManager packageManager;
            if (this.b == null) {
                Context context = this.a;
                try {
                    packageManager = context.getPackageManager();
                } catch (PackageManager.NameNotFoundException unused) {
                    Log.w("BackendRegistry", "Application info not found.");
                }
                if (packageManager == null) {
                    Log.w("BackendRegistry", "Context has no PackageManager.");
                } else {
                    ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, (Class<?>) TransportBackendDiscovery.class), 128);
                    if (serviceInfo == null) {
                        Log.w("BackendRegistry", "TransportBackendDiscovery has no service info.");
                    } else {
                        bundle = serviceInfo.metaData;
                        if (bundle != null) {
                            Log.w("BackendRegistry", "Could not retrieve metadata, returning empty list of transport backends.");
                            map = Collections.EMPTY_MAP;
                        } else {
                            HashMap hashMap = new HashMap();
                            for (String str2 : bundle.keySet()) {
                                Object obj = bundle.get(str2);
                                if ((obj instanceof String) && str2.startsWith("backend:")) {
                                    for (String str3 : ((String) obj).split(",", -1)) {
                                        String trim = str3.trim();
                                        if (!trim.isEmpty()) {
                                            hashMap.put(trim, str2.substring(8));
                                        }
                                    }
                                }
                            }
                            map = hashMap;
                        }
                        this.b = map;
                    }
                }
                bundle = null;
                if (bundle != null) {
                }
                this.b = map;
            }
            String str4 = (String) this.b.get(str);
            if (str4 == null) {
                return null;
            }
            try {
                return (BackendFactory) Class.forName(str4).asSubclass(BackendFactory.class).getDeclaredConstructor(null).newInstance(null);
            } catch (ClassNotFoundException e) {
                Log.w("BackendRegistry", "Class " + str4 + " is not found.", e);
                return null;
            } catch (IllegalAccessException e2) {
                Log.w("BackendRegistry", "Could not instantiate " + str4 + ".", e2);
                return null;
            } catch (InstantiationException e3) {
                Log.w("BackendRegistry", "Could not instantiate " + str4 + ".", e3);
                return null;
            } catch (NoSuchMethodException e4) {
                Log.w("BackendRegistry", "Could not instantiate ".concat(str4), e4);
                return null;
            } catch (InvocationTargetException e5) {
                Log.w("BackendRegistry", "Could not instantiate ".concat(str4), e5);
                return null;
            }
        }
    }

    public MetadataBackendRegistry(Context context, CreationContextFactory creationContextFactory) {
        BackendFactoryProvider backendFactoryProvider = new BackendFactoryProvider(context);
        this.c = new HashMap();
        this.a = backendFactoryProvider;
        this.b = creationContextFactory;
    }

    @Override // com.google.android.datatransport.runtime.backends.BackendRegistry
    public final synchronized TransportBackend a(String str) {
        if (this.c.containsKey(str)) {
            return (TransportBackend) this.c.get(str);
        }
        BackendFactory a = this.a.a(str);
        if (a == null) {
            return null;
        }
        CreationContextFactory creationContextFactory = this.b;
        TransportBackend create = a.create(new AutoValue_CreationContext(creationContextFactory.a, creationContextFactory.b, creationContextFactory.c, str));
        this.c.put(str, create);
        return create;
    }
}
