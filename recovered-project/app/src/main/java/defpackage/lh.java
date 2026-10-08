package defpackage;

import android.view.autofill.AutofillValue;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionInstance;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.ui.autofill.AndroidFillableData;
import androidx.compose.ui.autofill.FillableData;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.state.ToggleableState;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.navigation.NavController;
import androidx.navigation.NavHostController;
import io.sentry.IScope;
import io.sentry.SentryIntegrationPackageStorage;
import io.sentry.SentryOptions;
import io.sentry.SentryReplayOptions;
import io.sentry.android.core.SentryAndroidOptions;
import io.sentry.kotlin.multiplatform.JvmScopeProvider;
import io.sentry.kotlin.multiplatform.SentryOptions;
import io.sentry.kotlin.multiplatform.SentryReplayOptions;
import io.sentry.kotlin.multiplatform.extensions.SentryLevelExtensions_jvmKt;
import io.sentry.kotlin.multiplatform.extensions.SentryOptionsExtensions_androidKt$WhenMappings;
import io.sentry.kotlin.multiplatform.extensions.a;
import io.sentry.protocol.SdkVersion;
import io.sentry.protocol.SentryPackage;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.sync.MutexImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class lh implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;

    public /* synthetic */ lh(MutexImpl mutexImpl, MutexImpl.CancellableContinuationWithOwner cancellableContinuationWithOwner) {
        this.j = 7;
        this.k = mutexImpl;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        ToggleableState toggleableState;
        SentryReplayOptions.SentryReplayQuality sentryReplayQuality;
        int i = this.j;
        boolean z = true;
        int i2 = 0;
        Boolean bool = null;
        Unit unit = Unit.a;
        Object obj2 = this.k;
        switch (i) {
            case 0:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj2;
                AutofillValue autofillValue = ((AndroidFillableData) ((FillableData) obj)).a;
                if (autofillValue.isToggle()) {
                    bool = Boolean.valueOf(autofillValue.getToggleValue());
                }
                if (bool != null) {
                    if (bool.booleanValue()) {
                        toggleableState = ToggleableState.j;
                    } else {
                        toggleableState = ToggleableState.k;
                    }
                    KProperty[] kPropertyArr = SemanticsPropertiesKt.a;
                    SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.L;
                    KProperty kProperty = SemanticsPropertiesKt.a[26];
                    semanticsPropertyKey.getClass();
                    semanticsPropertyReceiver.b(semanticsPropertyKey, toggleableState);
                } else {
                    z = false;
                }
                return Boolean.valueOf(z);
            case 1:
                final Transition transition = (Transition) obj2;
                return new DisposableEffectResult() { // from class: androidx.compose.animation.core.TransitionKt$rememberTransition$lambda$3$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void a() {
                        Transition transition2 = Transition.this;
                        transition2.j();
                        transition2.a.e();
                    }
                };
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                final TransitionInstance transitionInstance = (TransitionInstance) obj2;
                return new DisposableEffectResult() { // from class: androidx.compose.animation.core.TransitionKt$updateTransition$lambda$1$0$$inlined$onDispose$1
                    @Override // androidx.compose.runtime.DisposableEffectResult
                    public final void a() {
                        TransitionInstance transitionInstance2 = TransitionInstance.this;
                        transitionInstance2.j();
                        transitionInstance2.a.e();
                    }
                };
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                NavController.b((NavHostController) obj2, "audioPicker/" + ((Integer) obj).intValue());
                return unit;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                SentryAndroidOptions sentryAndroidOptions = (SentryAndroidOptions) obj;
                sentryAndroidOptions.getClass();
                ((lh) obj2).b(sentryAndroidOptions);
                SdkVersion sdkVersion = sentryAndroidOptions.getSdkVersion();
                if (sdkVersion != null) {
                    sdkVersion.j = "sentry.java.android.kmp";
                }
                SdkVersion sdkVersion2 = sentryAndroidOptions.getSdkVersion();
                if (sdkVersion2 != null) {
                    sdkVersion2.k = "0.27.0";
                }
                SdkVersion sdkVersion3 = sentryAndroidOptions.getSdkVersion();
                if (sdkVersion3 != null) {
                    CopyOnWriteArraySet copyOnWriteArraySet = sdkVersion3.l;
                    if (copyOnWriteArraySet == null) {
                        copyOnWriteArraySet = SentryIntegrationPackageStorage.d().b;
                    }
                    if (copyOnWriteArraySet != null) {
                        if (!copyOnWriteArraySet.isEmpty()) {
                            Iterator it = copyOnWriteArraySet.iterator();
                            while (it.hasNext()) {
                                if (Intrinsics.a(((SentryPackage) it.next()).j, "maven:io.sentry:sentry-android")) {
                                }
                            }
                        }
                        if (sentryAndroidOptions.getSdkVersion() != null) {
                            SentryIntegrationPackageStorage.d().b("maven:io.sentry:sentry-android", "8.41.0");
                        }
                    }
                }
                sentryAndroidOptions.setNativeSdkName("sentry.native.android.kmp");
                return unit;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                IScope iScope = (IScope) obj;
                iScope.getClass();
                ((le) obj2).b(new JvmScopeProvider(iScope));
                return unit;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                SentryOptions sentryOptions = (SentryOptions) obj2;
                SentryAndroidOptions sentryAndroidOptions2 = (SentryAndroidOptions) obj;
                sentryAndroidOptions2.getClass();
                sentryAndroidOptions2.setDsn(sentryOptions.a);
                sentryAndroidOptions2.setAttachThreads(true);
                sentryAndroidOptions2.setAttachStacktrace(true);
                sentryAndroidOptions2.setDist(null);
                sentryAndroidOptions2.setEnvironment(sentryOptions.d);
                sentryAndroidOptions2.setSendDefaultPii(false);
                sentryAndroidOptions2.setRelease(sentryOptions.b);
                sentryAndroidOptions2.setDebug(sentryOptions.c);
                sentryAndroidOptions2.setSessionTrackingIntervalMillis(30000L);
                sentryAndroidOptions2.setEnableAutoSessionTracking(true);
                sentryAndroidOptions2.setMaxAttachmentSize(sentryOptions.h);
                sentryAndroidOptions2.setMaxBreadcrumbs(sentryOptions.g);
                sentryAndroidOptions2.setSampleRate(sentryOptions.i);
                sentryAndroidOptions2.setTracesSampleRate(null);
                sentryAndroidOptions2.setDiagnosticLevel(SentryLevelExtensions_jvmKt.a(sentryOptions.f));
                SentryOptions.Logs logs = sentryAndroidOptions2.getLogs();
                sentryOptions.m.getClass();
                logs.a = false;
                sentryAndroidOptions2.setBeforeBreadcrumb(new fe(25, sentryOptions));
                sentryAndroidOptions2.setBeforeSend(new a(i2, sentryOptions));
                sentryAndroidOptions2.setAttachScreenshot(false);
                sentryAndroidOptions2.setAttachViewHierarchy(false);
                sentryAndroidOptions2.setAnrEnabled(sentryOptions.j);
                sentryAndroidOptions2.setAnrTimeoutIntervalMillis(sentryOptions.k);
                SentryReplayOptions sessionReplay = sentryAndroidOptions2.getSessionReplay();
                sessionReplay.getClass();
                io.sentry.kotlin.multiplatform.SentryReplayOptions sentryReplayOptions = sentryOptions.l;
                sessionReplay.c(sentryReplayOptions.a);
                SentryReplayOptions sessionReplay2 = sentryAndroidOptions2.getSessionReplay();
                sessionReplay2.getClass();
                sessionReplay2.b(sentryReplayOptions.b);
                sentryAndroidOptions2.getSessionReplay().u(null);
                sentryAndroidOptions2.getSessionReplay().t(null);
                SentryReplayOptions sessionReplay3 = sentryAndroidOptions2.getSessionReplay();
                SentryReplayOptions.Quality quality = sentryReplayOptions.c;
                quality.getClass();
                int i3 = SentryOptionsExtensions_androidKt$WhenMappings.a[quality.ordinal()];
                if (i3 != 1) {
                    if (i3 != 2) {
                        if (i3 == 3) {
                            sentryReplayQuality = SentryReplayOptions.SentryReplayQuality.HIGH;
                        } else {
                            k8.e();
                            return null;
                        }
                    } else {
                        sentryReplayQuality = SentryReplayOptions.SentryReplayQuality.MEDIUM;
                    }
                } else {
                    sentryReplayQuality = SentryReplayOptions.SentryReplayQuality.LOW;
                }
                sessionReplay3.f = sentryReplayQuality;
                return unit;
            default:
                ((MutexImpl) obj2).h(null);
                return unit;
        }
    }

    public /* synthetic */ lh(int i, Object obj) {
        this.j = i;
        this.k = obj;
    }
}
