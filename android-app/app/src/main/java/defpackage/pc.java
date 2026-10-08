package defpackage;

import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.material.AndroidMenu_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function4;
import net.blip.android.HardwareInfoAndroid;
import net.blip.android.shortcuts.PinPeerShortcutMenuItemKt;
import net.blip.android.ui.onboarding.OnboardingCodeEntryStep;
import net.blip.android.ui.onboarding.OnboardingCompanionDeviceSetupStep;
import net.blip.android.ui.onboarding.OnboardingEmailEntryStep;
import net.blip.android.ui.onboarding.OnboardingEnableNotificationsStep;
import net.blip.android.ui.onboarding.OnboardingProfileStep;
import net.blip.android.ui.onboarding.OnboardingShareInstructionsStep;
import net.blip.android.ui.onboarding.OnboardingSplashStep;
import net.blip.android.ui.peer.ComposableSingletons$PeerScreenKt;
import net.blip.libblip.HardwareInfo;
import net.blip.libblip.Peer;
import net.blip.libblip.State_DerivedKt;
import net.blip.libblip.User;
import net.blip.libblip.event.RegistrationRequested;
import net.blip.libblip.event.SendRegistrationCodeRequested;
import net.blip.libblip.frontend.Err;
import net.blip.libblip.frontend.Onboarding;
import net.blip.libblip.frontend.Registration;
import net.blip.libblip.frontend.State;
import net.blip.shared.ProvideSharedCompositionLocalsKt;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class pc implements Function4 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;

    public /* synthetic */ pc(Object obj, Object obj2, Object obj3, int i) {
        this.j = i;
        this.k = obj;
        this.l = obj2;
        this.m = obj3;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object j(Object obj, Object obj2, Object obj3, Object obj4) {
        String str;
        String str2;
        boolean z;
        boolean z2;
        User e;
        int i;
        int i2 = this.j;
        Unit unit = Unit.a;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
        Object obj5 = this.m;
        Object obj6 = this.l;
        Object obj7 = this.k;
        final int i3 = 0;
        final int i4 = 1;
        switch (i2) {
            case 0:
                final Function1 function1 = (Function1) obj7;
                Registration registration = ((State) obj6).q;
                final HardwareInfo hardwareInfo = (HardwareInfo) obj5;
                Onboarding.Step step = (Onboarding.Step) obj2;
                Composer composer = (Composer) obj3;
                ((Integer) obj4).getClass();
                ((AnimatedContentScope) obj).getClass();
                step.getClass();
                int ordinal = step.m.ordinal();
                if (ordinal != 0) {
                    String str3 = "";
                    if (ordinal != 1) {
                        if (ordinal != 2) {
                            if (ordinal != 3) {
                                if (ordinal != 4) {
                                    if (ordinal != 5) {
                                        if (ordinal != 7) {
                                            GapComposer gapComposer = (GapComposer) composer;
                                            gapComposer.W(-1888036049);
                                            gapComposer.p(false);
                                        } else {
                                            GapComposer gapComposer2 = (GapComposer) composer;
                                            gapComposer2.W(-338002673);
                                            boolean f = gapComposer2.f(function1);
                                            Object K = gapComposer2.K();
                                            if (f || K == composer$Companion$Empty$1) {
                                                K = new b8(function1, 4);
                                                gapComposer2.g0(K);
                                            }
                                            OnboardingShareInstructionsStep.a.a((Function0) K, gapComposer2, 0);
                                            gapComposer2.p(false);
                                        }
                                    } else {
                                        GapComposer gapComposer3 = (GapComposer) composer;
                                        gapComposer3.W(-338008623);
                                        boolean f2 = gapComposer3.f(function1);
                                        Object K2 = gapComposer3.K();
                                        if (f2 || K2 == composer$Companion$Empty$1) {
                                            K2 = new b8(function1, 3);
                                            gapComposer3.g0(K2);
                                        }
                                        OnboardingEnableNotificationsStep.a.a((Function0) K2, gapComposer3, 0);
                                        gapComposer3.p(false);
                                    }
                                } else {
                                    GapComposer gapComposer4 = (GapComposer) composer;
                                    gapComposer4.W(-338014734);
                                    boolean f3 = gapComposer4.f(function1);
                                    Object K3 = gapComposer4.K();
                                    if (f3 || K3 == composer$Companion$Empty$1) {
                                        K3 = new b8(function1, 2);
                                        gapComposer4.g0(K3);
                                    }
                                    OnboardingCompanionDeviceSetupStep.a.a((Function0) K3, gapComposer4, 0);
                                    gapComposer4.p(false);
                                }
                            } else {
                                GapComposer gapComposer5 = (GapComposer) composer;
                                gapComposer5.W(-338029001);
                                User b = State_DerivedKt.b(ProvideSharedCompositionLocalsKt.b(ProvideSharedCompositionLocalsKt.d, gapComposer5));
                                if (b == null) {
                                    b = new User(null, 8191);
                                }
                                User user = b;
                                boolean f4 = gapComposer5.f(function1);
                                Object K4 = gapComposer5.K();
                                if (f4 || K4 == composer$Companion$Empty$1) {
                                    K4 = new c8(function1, 3);
                                    gapComposer5.g0(K4);
                                }
                                Function1 function12 = (Function1) K4;
                                boolean f5 = gapComposer5.f(function1);
                                Object K5 = gapComposer5.K();
                                if (f5 || K5 == composer$Companion$Empty$1) {
                                    K5 = new c8(function1, 4);
                                    gapComposer5.g0(K5);
                                }
                                OnboardingProfileStep.a.a(user, function12, (Function1) K5, gapComposer5, 0);
                                gapComposer5.p(false);
                            }
                        } else {
                            GapComposer gapComposer6 = (GapComposer) composer;
                            gapComposer6.W(-338058042);
                            if (registration != null && (str2 = registration.o) != null) {
                                str3 = str2;
                            }
                            boolean z3 = step.n;
                            Err err = step.o;
                            boolean f6 = gapComposer6.f(function1) | gapComposer6.h(hardwareInfo);
                            Object K6 = gapComposer6.K();
                            if (f6 || K6 == composer$Companion$Empty$1) {
                                K6 = new Function1() { // from class: qc
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object b(Object obj8) {
                                        int i5 = i4;
                                        Unit unit2 = Unit.a;
                                        HardwareInfo hardwareInfo2 = hardwareInfo;
                                        Function1 function13 = function1;
                                        switch (i5) {
                                            case 0:
                                                String str4 = (String) obj8;
                                                str4.getClass();
                                                function13.b(new SendRegistrationCodeRequested(str4, (String) ((HardwareInfoAndroid) hardwareInfo2).b.getValue(), ByteString.m));
                                                return unit2;
                                            default:
                                                String str5 = (String) obj8;
                                                str5.getClass();
                                                String str6 = (String) ((HardwareInfoAndroid) hardwareInfo2).a.getValue();
                                                if (str6 == null) {
                                                    str6 = "";
                                                }
                                                HardwareInfoAndroid hardwareInfoAndroid = (HardwareInfoAndroid) hardwareInfo2;
                                                function13.b(new RegistrationRequested(str5, str6, (String) hardwareInfoAndroid.b.getValue(), hardwareInfoAndroid.g, ByteString.m));
                                                return unit2;
                                        }
                                    }
                                };
                                gapComposer6.g0(K6);
                            }
                            Function1 function13 = (Function1) K6;
                            boolean f7 = gapComposer6.f(function1);
                            Object K7 = gapComposer6.K();
                            if (f7 || K7 == composer$Companion$Empty$1) {
                                K7 = new b8(function1, 6);
                                gapComposer6.g0(K7);
                            }
                            OnboardingCodeEntryStep.a.a(str3, z3, err, function13, (Function0) K7, gapComposer6, 0);
                            gapComposer6.p(false);
                        }
                    } else {
                        GapComposer gapComposer7 = (GapComposer) composer;
                        gapComposer7.W(-338075399);
                        if (registration != null && (str = registration.o) != null) {
                            str3 = str;
                        }
                        boolean z4 = step.n;
                        Err err2 = step.o;
                        boolean f8 = gapComposer7.f(function1) | gapComposer7.h(hardwareInfo);
                        Object K8 = gapComposer7.K();
                        if (f8 || K8 == composer$Companion$Empty$1) {
                            K8 = new Function1() { // from class: qc
                                @Override // kotlin.jvm.functions.Function1
                                public final Object b(Object obj8) {
                                    int i5 = i3;
                                    Unit unit2 = Unit.a;
                                    HardwareInfo hardwareInfo2 = hardwareInfo;
                                    Function1 function132 = function1;
                                    switch (i5) {
                                        case 0:
                                            String str4 = (String) obj8;
                                            str4.getClass();
                                            function132.b(new SendRegistrationCodeRequested(str4, (String) ((HardwareInfoAndroid) hardwareInfo2).b.getValue(), ByteString.m));
                                            return unit2;
                                        default:
                                            String str5 = (String) obj8;
                                            str5.getClass();
                                            String str6 = (String) ((HardwareInfoAndroid) hardwareInfo2).a.getValue();
                                            if (str6 == null) {
                                                str6 = "";
                                            }
                                            HardwareInfoAndroid hardwareInfoAndroid = (HardwareInfoAndroid) hardwareInfo2;
                                            function132.b(new RegistrationRequested(str5, str6, (String) hardwareInfoAndroid.b.getValue(), hardwareInfoAndroid.g, ByteString.m));
                                            return unit2;
                                    }
                                }
                            };
                            gapComposer7.g0(K8);
                        }
                        OnboardingEmailEntryStep.a.a(str3, z4, err2, (Function1) K8, gapComposer7, 0);
                        gapComposer7.p(false);
                    }
                } else {
                    GapComposer gapComposer8 = (GapComposer) composer;
                    gapComposer8.W(-338081108);
                    boolean f9 = gapComposer8.f(function1);
                    Object K9 = gapComposer8.K();
                    if (f9 || K9 == composer$Companion$Empty$1) {
                        K9 = new b8(function1, 5);
                        gapComposer8.g0(K9);
                    }
                    OnboardingSplashStep.a.a((Function0) K9, gapComposer8, 0);
                    gapComposer8.p(false);
                }
                return unit;
            default:
                Peer peer = (Peer) obj7;
                MutableState mutableState = (MutableState) obj6;
                MutableState mutableState2 = (MutableState) obj5;
                Function0 function0 = (Function0) obj2;
                Composer composer2 = (Composer) obj3;
                int intValue = ((Integer) obj4).intValue();
                ((ColumnScope) obj).getClass();
                function0.getClass();
                if ((intValue & 48) == 0) {
                    if (((GapComposer) composer2).h(function0)) {
                        i = 32;
                    } else {
                        i = 16;
                    }
                    intValue |= i;
                }
                if ((intValue & 145) != 144) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer9 = (GapComposer) composer2;
                if (gapComposer9.N(intValue & 1, z)) {
                    int i5 = intValue & 112;
                    PinPeerShortcutMenuItemKt.a(peer, function0, gapComposer9, i5);
                    if (!(peer instanceof Peer.Device) && ((e = peer.e()) == null || !e.r)) {
                        gapComposer9.W(693095419);
                        gapComposer9.p(false);
                    } else {
                        gapComposer9.W(692727356);
                        if (i5 == 32) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        Object K10 = gapComposer9.K();
                        if (z2 || K10 == composer$Companion$Empty$1) {
                            K10 = new k1(function0, mutableState, 6);
                            gapComposer9.g0(K10);
                        }
                        AndroidMenu_androidKt.b((Function0) K10, null, false, null, ComposableSingletons$PeerScreenKt.a, gapComposer9, 196608, 30);
                        gapComposer9.p(false);
                    }
                    if (peer instanceof Peer.User) {
                        gapComposer9.W(693156830);
                        if (i5 != 32) {
                            i4 = 0;
                        }
                        Object K11 = gapComposer9.K();
                        if (i4 != 0 || K11 == composer$Companion$Empty$1) {
                            K11 = new k1(function0, mutableState2, 7);
                            gapComposer9.g0(K11);
                        }
                        AndroidMenu_androidKt.b((Function0) K11, null, false, null, ComposableSingletons$PeerScreenKt.b, gapComposer9, 196608, 30);
                        gapComposer9.p(false);
                    } else {
                        gapComposer9.W(693522971);
                        gapComposer9.p(false);
                    }
                } else {
                    gapComposer9.Q();
                }
                return unit;
        }
    }
}
