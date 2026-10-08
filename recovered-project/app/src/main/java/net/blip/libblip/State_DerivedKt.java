package net.blip.libblip;

import java.util.Map;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import net.blip.libblip.frontend.Auth;
import net.blip.libblip.frontend.Config;
import net.blip.libblip.frontend.Onboarding;
import net.blip.libblip.frontend.State;
import net.blip.libblip.frontend.Users;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class State_DerivedKt {
    public static final Config a(State state) {
        state.getClass();
        Config config = state.p;
        if (config == null) {
            return new Config(false, false, "", 0, 0, ByteString.m);
        }
        return config;
    }

    public static final User b(State state) {
        state.getClass();
        Auth auth = state.r;
        if (auth == null) {
            return null;
        }
        return (User) d(state).m.get(auth.n);
    }

    public static final boolean c(State state) {
        Onboarding.Step.Kind kind;
        Onboarding.Step step;
        state.getClass();
        Onboarding onboarding = state.s;
        if (onboarding != null && (step = onboarding.m) != null) {
            kind = step.m;
        } else {
            kind = null;
        }
        if (kind == Onboarding.Step.Kind.u) {
            return true;
        }
        return false;
    }

    public static final Users d(State state) {
        Map map;
        Map map2;
        state.getClass();
        Users users = state.u;
        if (users == null) {
            map = EmptyMap.j;
            map2 = EmptyMap.j;
            return new Users(map, map2, EmptyList.j, ByteString.m);
        }
        return users;
    }
}
