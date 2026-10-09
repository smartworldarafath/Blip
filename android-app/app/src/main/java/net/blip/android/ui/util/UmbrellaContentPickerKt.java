package net.blip.android.ui.util;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import androidx.activity.compose.ActivityResultRegistryKt;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.LazyWindowInfo;
import androidx.compose.ui.platform.WindowInfo;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.ViewModelStoreOwnerDefaults;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.ViewModelKt;
import androidx.navigation.NavHostController;
import defpackage.ec;
import defpackage.u2;
import defpackage.x9;
import java.io.File;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;
import net.blip.android.ui.navigation.NavigationRootKt;
import net.blip.shared.ContentPicker_androidKt;
import net.blip.shared.InternetShortcut;
import net.blip.shared.InternetShortcutKt;
import net.blip.shared.ScratchFileKt;
import net.blip.shared.ScratchFileWriter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class UmbrellaContentPickerKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0145 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0028  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x00ab -> B:14:0x0142). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x011c -> B:14:0x0142). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x013a -> B:12:0x013d). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object a(Context context, ScratchFileWriter scratchFileWriter, ContinuationImpl continuationImpl) {
        UmbrellaContentPickerKt$clipboardLocations$1 umbrellaContentPickerKt$clipboardLocations$1;
        int i;
        List arrayList;
        int itemCount;
        int i2;
        ClipData clipData;
        ScratchFileWriter scratchFileWriter2;
        ScratchFileWriter scratchFileWriter3;
        ClipData clipData2;
        ScratchFileWriter scratchFileWriter4;
        List list;
        String str;
        String str2;
        if (continuationImpl instanceof UmbrellaContentPickerKt$clipboardLocations$1) {
            UmbrellaContentPickerKt$clipboardLocations$1 umbrellaContentPickerKt$clipboardLocations$12 = (UmbrellaContentPickerKt$clipboardLocations$1) continuationImpl;
            int i3 = umbrellaContentPickerKt$clipboardLocations$12.t;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                umbrellaContentPickerKt$clipboardLocations$12.t = i3 - Integer.MIN_VALUE;
                umbrellaContentPickerKt$clipboardLocations$1 = umbrellaContentPickerKt$clipboardLocations$12;
                Object obj = umbrellaContentPickerKt$clipboardLocations$1.s;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = umbrellaContentPickerKt$clipboardLocations$1.t;
                if (i == 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i == 3) {
                                itemCount = umbrellaContentPickerKt$clipboardLocations$1.r;
                                i2 = umbrellaContentPickerKt$clipboardLocations$1.q;
                                arrayList = (List) umbrellaContentPickerKt$clipboardLocations$1.p;
                                List list2 = umbrellaContentPickerKt$clipboardLocations$1.o;
                                clipData = umbrellaContentPickerKt$clipboardLocations$1.n;
                                scratchFileWriter4 = umbrellaContentPickerKt$clipboardLocations$1.m;
                                ResultKt.b(obj);
                                arrayList.add(obj);
                                arrayList = list2;
                                scratchFileWriter2 = scratchFileWriter4;
                                i2++;
                                if (i2 >= itemCount) {
                                    ClipData.Item itemAt = clipData.getItemAt(i2);
                                    Uri uri = itemAt.getUri();
                                    CharSequence text = itemAt.getText();
                                    Intent intent = itemAt.getIntent();
                                    if (uri != null) {
                                        String uri2 = uri.toString();
                                        uri2.getClass();
                                        arrayList.add(uri2);
                                    } else {
                                        if (text != null) {
                                            String str3 = text.toString();
                                            InternetShortcut a = InternetShortcutKt.a(str3, null);
                                            if (a != null) {
                                                String str4 = a.b;
                                                if (str4 == null) {
                                                    str4 = "Pasted link";
                                                }
                                                InternetShortcut internetShortcut = new InternetShortcut(a.a, str4);
                                                umbrellaContentPickerKt$clipboardLocations$1.m = scratchFileWriter2;
                                                umbrellaContentPickerKt$clipboardLocations$1.n = clipData;
                                                umbrellaContentPickerKt$clipboardLocations$1.o = arrayList;
                                                umbrellaContentPickerKt$clipboardLocations$1.p = str3;
                                                umbrellaContentPickerKt$clipboardLocations$1.q = i2;
                                                umbrellaContentPickerKt$clipboardLocations$1.r = itemCount;
                                                umbrellaContentPickerKt$clipboardLocations$1.t = 1;
                                                Object a2 = ScratchFileKt.a(scratchFileWriter2, internetShortcut, umbrellaContentPickerKt$clipboardLocations$1);
                                                if (a2 != coroutineSingletons) {
                                                    scratchFileWriter4 = scratchFileWriter2;
                                                    obj = a2;
                                                    list = arrayList;
                                                    str = str3;
                                                    str2 = (String) obj;
                                                    if (str2 != null) {
                                                        List list3 = list;
                                                        str3 = str;
                                                        arrayList = list3;
                                                        umbrellaContentPickerKt$clipboardLocations$1.m = scratchFileWriter4;
                                                        umbrellaContentPickerKt$clipboardLocations$1.n = clipData;
                                                        umbrellaContentPickerKt$clipboardLocations$1.o = arrayList;
                                                        umbrellaContentPickerKt$clipboardLocations$1.p = null;
                                                        umbrellaContentPickerKt$clipboardLocations$1.q = i2;
                                                        umbrellaContentPickerKt$clipboardLocations$1.r = itemCount;
                                                        umbrellaContentPickerKt$clipboardLocations$1.t = 2;
                                                        obj = ScratchFileWriter.b(scratchFileWriter4, str3, "Pasted text", umbrellaContentPickerKt$clipboardLocations$1);
                                                        if (obj != coroutineSingletons) {
                                                        }
                                                    } else {
                                                        arrayList = list;
                                                        arrayList.add(str2);
                                                        scratchFileWriter2 = scratchFileWriter4;
                                                    }
                                                }
                                            } else {
                                                scratchFileWriter4 = scratchFileWriter2;
                                                umbrellaContentPickerKt$clipboardLocations$1.m = scratchFileWriter4;
                                                umbrellaContentPickerKt$clipboardLocations$1.n = clipData;
                                                umbrellaContentPickerKt$clipboardLocations$1.o = arrayList;
                                                umbrellaContentPickerKt$clipboardLocations$1.p = null;
                                                umbrellaContentPickerKt$clipboardLocations$1.q = i2;
                                                umbrellaContentPickerKt$clipboardLocations$1.r = itemCount;
                                                umbrellaContentPickerKt$clipboardLocations$1.t = 2;
                                                obj = ScratchFileWriter.b(scratchFileWriter4, str3, "Pasted text", umbrellaContentPickerKt$clipboardLocations$1);
                                                if (obj != coroutineSingletons) {
                                                    clipData2 = clipData;
                                                    scratchFileWriter3 = scratchFileWriter4;
                                                    scratchFileWriter4 = scratchFileWriter3;
                                                    clipData = clipData2;
                                                    arrayList.add((String) obj);
                                                    scratchFileWriter2 = scratchFileWriter4;
                                                }
                                            }
                                        } else if (intent != null) {
                                            String uri3 = intent.toUri(1);
                                            uri3.getClass();
                                            umbrellaContentPickerKt$clipboardLocations$1.m = scratchFileWriter2;
                                            umbrellaContentPickerKt$clipboardLocations$1.n = clipData;
                                            umbrellaContentPickerKt$clipboardLocations$1.o = arrayList;
                                            umbrellaContentPickerKt$clipboardLocations$1.p = arrayList;
                                            umbrellaContentPickerKt$clipboardLocations$1.q = i2;
                                            umbrellaContentPickerKt$clipboardLocations$1.r = itemCount;
                                            umbrellaContentPickerKt$clipboardLocations$1.t = 3;
                                            Object b = ScratchFileWriter.b(scratchFileWriter2, uri3, "Pasted text", umbrellaContentPickerKt$clipboardLocations$1);
                                            if (b != coroutineSingletons) {
                                                scratchFileWriter4 = scratchFileWriter2;
                                                obj = b;
                                                list2 = arrayList;
                                                arrayList.add(obj);
                                                arrayList = list2;
                                                scratchFileWriter2 = scratchFileWriter4;
                                            }
                                        }
                                        return coroutineSingletons;
                                    }
                                    i2++;
                                    if (i2 >= itemCount) {
                                        return arrayList;
                                    }
                                }
                            } else {
                                u2.l("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            }
                        } else {
                            itemCount = umbrellaContentPickerKt$clipboardLocations$1.r;
                            i2 = umbrellaContentPickerKt$clipboardLocations$1.q;
                            arrayList = umbrellaContentPickerKt$clipboardLocations$1.o;
                            clipData2 = umbrellaContentPickerKt$clipboardLocations$1.n;
                            scratchFileWriter3 = umbrellaContentPickerKt$clipboardLocations$1.m;
                            ResultKt.b(obj);
                            scratchFileWriter4 = scratchFileWriter3;
                            clipData = clipData2;
                            arrayList.add((String) obj);
                            scratchFileWriter2 = scratchFileWriter4;
                            i2++;
                            if (i2 >= itemCount) {
                            }
                        }
                    } else {
                        itemCount = umbrellaContentPickerKt$clipboardLocations$1.r;
                        i2 = umbrellaContentPickerKt$clipboardLocations$1.q;
                        str = (String) umbrellaContentPickerKt$clipboardLocations$1.p;
                        list = umbrellaContentPickerKt$clipboardLocations$1.o;
                        clipData = umbrellaContentPickerKt$clipboardLocations$1.n;
                        scratchFileWriter4 = umbrellaContentPickerKt$clipboardLocations$1.m;
                        ResultKt.b(obj);
                        str2 = (String) obj;
                        if (str2 != null) {
                        }
                    }
                } else {
                    ResultKt.b(obj);
                    Object systemService = context.getSystemService("clipboard");
                    systemService.getClass();
                    ClipData primaryClip = ((ClipboardManager) systemService).getPrimaryClip();
                    if (primaryClip == null) {
                        return EmptyList.j;
                    }
                    arrayList = new ArrayList();
                    itemCount = primaryClip.getItemCount();
                    i2 = 0;
                    clipData = primaryClip;
                    scratchFileWriter2 = scratchFileWriter;
                    if (i2 >= itemCount) {
                    }
                }
            }
        }
        umbrellaContentPickerKt$clipboardLocations$1 = new ContinuationImpl(continuationImpl);
        Object obj2 = umbrellaContentPickerKt$clipboardLocations$1.s;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = umbrellaContentPickerKt$clipboardLocations$1.t;
        if (i == 0) {
        }
    }

    public static final boolean b(Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        Context context = (Context) gapComposer.j(AndroidCompositionLocals_androidKt.b);
        boolean f = gapComposer.f(context);
        Object K = gapComposer.K();
        if (f || K == Composer.Companion.a) {
            K = Boolean.valueOf(context.getPackageManager().hasSystemFeature("android.hardware.camera.any"));
            gapComposer.g0(K);
        }
        return ((Boolean) K).booleanValue();
    }

    public static final boolean c(Composer composer) {
        GapComposer gapComposer = (GapComposer) composer;
        Context context = (Context) gapComposer.j(AndroidCompositionLocals_androidKt.b);
        boolean a = ((LazyWindowInfo) ((WindowInfo) gapComposer.j(CompositionLocalsKt.u))).a();
        boolean f = gapComposer.f(context);
        Object K = gapComposer.K();
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
        if (f || K == composer$Companion$Empty$1) {
            Object systemService = context.getSystemService("clipboard");
            systemService.getClass();
            K = (ClipboardManager) systemService;
            gapComposer.g0(K);
        }
        ClipboardManager clipboardManager = (ClipboardManager) K;
        boolean f2 = gapComposer.f(clipboardManager);
        Object K2 = gapComposer.K();
        if (f2 || K2 == composer$Companion$Empty$1) {
            K2 = SnapshotStateKt.g(Boolean.valueOf(clipboardManager.hasPrimaryClip()));
            gapComposer.g0(K2);
        }
        MutableState mutableState = (MutableState) K2;
        boolean f3 = gapComposer.f(mutableState) | gapComposer.h(clipboardManager);
        Object K3 = gapComposer.K();
        if (f3 || K3 == composer$Companion$Empty$1) {
            K3 = new ec(24, clipboardManager, mutableState);
            gapComposer.g0(K3);
        }
        EffectsKt.c(clipboardManager, (Function1) K3, gapComposer);
        Boolean valueOf = Boolean.valueOf(a);
        boolean g = gapComposer.g(a) | gapComposer.f(mutableState) | gapComposer.h(clipboardManager);
        Object K4 = gapComposer.K();
        if (g || K4 == composer$Companion$Empty$1) {
            K4 = new UmbrellaContentPickerKt$rememberHasClipboardContent$2$1(a, clipboardManager, mutableState, null);
            gapComposer.g0(K4);
        }
        EffectsKt.f(clipboardManager, valueOf, (Function2) K4, gapComposer);
        return ((Boolean) mutableState.getValue()).booleanValue();
    }

    public static final Function1 d(final Function1 function1, Composer composer) {
        function1.getClass();
        final Function2 e = e(composer);
        GapComposer gapComposer = (GapComposer) composer;
        Object K = gapComposer.K();
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
        if (K == composer$Companion$Empty$1) {
            K = EffectsKt.h(gapComposer);
            gapComposer.g0(K);
        }
        final CoroutineScope coroutineScope = (CoroutineScope) K;
        boolean h = gapComposer.h(coroutineScope) | gapComposer.h(e) | gapComposer.f(function1);
        Object K2 = gapComposer.K();
        if (h || K2 == composer$Companion$Empty$1) {
            K2 = new Function1() { // from class: net.blip.android.ui.util.b
                @Override // kotlin.jvm.functions.Function1
                public final Object b(Object obj) {
                    UmbrellaContentPickerType umbrellaContentPickerType = (UmbrellaContentPickerType) obj;
                    umbrellaContentPickerType.getClass();
                    BuildersKt.c(coroutineScope, null, null, new UmbrellaContentPickerKt$rememberNonSuspendingUmbrellaContentPickerLauncher$1$1$1(e, umbrellaContentPickerType, function1, null), 3);
                    return Unit.a;
                }
            };
            gapComposer.g0(K2);
        }
        return (Function1) K2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    public static final Function2 e(Composer composer) {
        int i;
        boolean z;
        File file;
        int q;
        SuspendingPermissionState a = LaunchersKt.a("android.permission.READ_EXTERNAL_STORAGE", composer);
        Function2 b = ContentPicker_androidKt.b(composer);
        GapComposer gapComposer = (GapComposer) composer;
        boolean h = gapComposer.h(a) | gapComposer.h(b);
        Object K = gapComposer.K();
        Object obj = Composer.Companion.a;
        if (h || K == obj) {
            K = new LaunchersKt$rememberGreedyContentPickerLauncher$1$1(a, b, null);
            gapComposer.g0(K);
        }
        Function2 function2 = (Function2) K;
        StaticProvidableCompositionLocal staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.b;
        Context context = (Context) gapComposer.j(staticProvidableCompositionLocal);
        ?? obj2 = new Object();
        ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) gapComposer.j(LocalViewModelStoreOwner.a);
        if (viewModelStoreOwner != null) {
            LauncherChannelRegistry launcherChannelRegistry = (LauncherChannelRegistry) ViewModelKt.a(Reflection.a(LauncherChannelRegistry.class), viewModelStoreOwner, null, ViewModelStoreOwnerDefaults.a(viewModelStoreOwner), gapComposer);
            int i2 = 0;
            Object[] objArr = new Object[0];
            Object K2 = gapComposer.K();
            if (K2 == obj) {
                K2 = new x9(7);
                gapComposer.g0(K2);
            }
            Object c = RememberSaveableKt.c(objArr, (Function0) K2, gapComposer);
            c.getClass();
            String str = (String) c;
            boolean f = gapComposer.f(obj2);
            Object K3 = gapComposer.K();
            if (f || K3 == obj) {
                LinkedHashMap linkedHashMap = launcherChannelRegistry.b;
                Object obj3 = linkedHashMap.get(str);
                if (obj3 == null) {
                    obj3 = ChannelKt.a(0, 7, null);
                    linkedHashMap.put(str, obj3);
                }
                K3 = (Channel) obj3;
                gapComposer.g0(K3);
            }
            Channel channel = (Channel) K3;
            boolean h2 = gapComposer.h(channel);
            Object K4 = gapComposer.K();
            if (h2 || K4 == obj) {
                K4 = new a(i2, channel);
                gapComposer.g0(K4);
            }
            ManagedActivityResultLauncher a2 = ActivityResultRegistryKt.a(obj2, (Function1) K4, gapComposer);
            boolean h3 = gapComposer.h(a2) | gapComposer.h(channel);
            Object K5 = gapComposer.K();
            if (h3 || K5 == obj) {
                K5 = new LaunchersKt$rememberSuspendingLauncherForActivityResult$1$1(a2, channel, null);
                gapComposer.g0(K5);
            }
            SuspendingLauncher suspendingLauncher = new SuspendingLauncher((Function2) K5);
            SuspendingPermissionState a3 = LaunchersKt.a("android.permission.WRITE_EXTERNAL_STORAGE", gapComposer);
            boolean h4 = gapComposer.h(context) | gapComposer.h(suspendingLauncher) | gapComposer.h(a3);
            Object K6 = gapComposer.K();
            if (h4 || K6 == obj) {
                K6 = new LaunchersKt$rememberCameraLauncher$launch$1$1(context, suspendingLauncher, a3, null);
                gapComposer.g0(K6);
            }
            Function2 function22 = (Function2) K6;
            NavHostController navHostController = (NavHostController) gapComposer.j(NavigationRootKt.a);
            Context context2 = (Context) gapComposer.j(staticProvidableCompositionLocal);
            boolean f2 = gapComposer.f(context2);
            Object K7 = gapComposer.K();
            if (f2 || K7 == obj) {
                File cacheDir = context2.getCacheDir();
                cacheDir.getClass();
                File file2 = new File("scratch");
                String path = file2.getPath();
                path.getClass();
                char c2 = File.separatorChar;
                int q2 = StringsKt.q(path, c2, 0, 4);
                if (q2 == 0) {
                    if (path.length() > 1 && path.charAt(1) == c2 && (q = StringsKt.q(path, c2, 2, 4)) >= 0) {
                        int q3 = StringsKt.q(path, c2, q + 1, 4);
                        if (q3 >= 0) {
                            i = q3 + 1;
                        } else {
                            i = path.length();
                        }
                    } else {
                        i = 1;
                    }
                } else if (q2 > 0 && path.charAt(q2 - 1) == ':') {
                    i = q2 + 1;
                } else if (q2 == -1 && StringsKt.n(path, ':')) {
                    i = path.length();
                } else {
                    i = 0;
                }
                if (i > 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (!z) {
                    String file3 = cacheDir.toString();
                    file3.getClass();
                    if (file3.length() == 0) {
                        i2 = 1;
                    }
                    if (i2 == 0 && !StringsKt.n(file3, c2)) {
                        file = new File(file3 + c2 + file2);
                    } else {
                        file = new File(file3 + file2);
                    }
                    file2 = file;
                }
                String absolutePath = file2.getAbsolutePath();
                absolutePath.getClass();
                K7 = new ScratchFileWriter(absolutePath);
                gapComposer.g0(K7);
            }
            ScratchFileWriter scratchFileWriter = (ScratchFileWriter) K7;
            boolean f3 = gapComposer.f(context2) | gapComposer.f(scratchFileWriter);
            Object K8 = gapComposer.K();
            if (f3 || K8 == obj) {
                UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1 umbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1 = new UmbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1(function2, function22, navHostController, context2, scratchFileWriter, null);
                gapComposer.g0(umbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1);
                K8 = umbrellaContentPickerKt$rememberUmbrellaContentPickerLauncher$1$1;
            }
            return (Function2) K8;
        }
        u2.l("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
        return null;
    }
}
