package defpackage;

import android.app.RemoteAction;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Trace;
import android.view.inputmethod.BaseInputConnection;
import androidx.collection.MutableObjectList;
import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.animation.core.Transition;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuData;
import androidx.compose.foundation.text.contextmenu.internal.TextClassificationHelperApi28;
import androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuModifierKt;
import androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuToolbarHandlerNode;
import androidx.compose.foundation.text.modifiers.TextAnnotatedStringNode;
import androidx.compose.foundation.text.modifiers.TextStringSimpleNode;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.saveable.SaveableStateRegistryWrapper;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.vector.VectorPainter;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.input.nestedscroll.NestedScrollNode;
import androidx.compose.ui.modifier.ModifierLocal;
import androidx.compose.ui.modifier.ModifierLocalManager;
import androidx.compose.ui.node.BackwardsCompatNode;
import androidx.compose.ui.node.DrawModifierNodeKt;
import androidx.compose.ui.node.LayoutModifierNodeKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import androidx.compose.ui.spatial.RectManager;
import androidx.compose.ui.text.input.TextInputServiceAndroid;
import androidx.compose.ui.text.platform.style.ShaderBrushSpan;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.window.PopupLayout;
import androidx.core.os.BundleKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.lifecycle.SavedStateHandleSupport;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.navigation.NavDeepLink;
import androidx.room.util.DBUtil;
import androidx.savedstate.Recreator;
import androidx.savedstate.SavedStateRegistryController;
import androidx.savedstate.SavedStateRegistryOwner;
import androidx.work.Configuration;
import androidx.work.Worker;
import androidx.work.impl.Schedulers;
import androidx.work.impl.WorkContinuationImpl;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.background.systemjob.JobSchedulerExtKt;
import androidx.work.impl.background.systemjob.SystemJobScheduler;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.utils.EnqueueRunnable;
import androidx.work.impl.utils.EnqueueUtilsKt;
import coil3.RealImageLoader;
import coil3.disk.DiskCache;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import java.io.File;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.serialization.descriptors.SerialDescriptorImpl;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptorKt;
import net.blip.libblip.PeerPickerViewModel;
import net.blip.libblip.TransferChoosePeerViewModel;
import net.blip.libblip.event.AbandonSearch;
import net.blip.libblip.event.TransferRemoveRequested;
import net.blip.libblip.frontend.Transfer;
import okio.Buffer;
import okio.ByteString;
import okio.FileSystem;
import okio.Path;
import okio.internal.ResourceFileSystem;
import okio.internal.ZipFilesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class kb implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;

    public /* synthetic */ kb(int i, Object obj) {
        this.j = i;
        this.k = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [androidx.navigation.NavDeepLink$Builder, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v13, types: [java.lang.Object, kotlin.jvm.functions.Function1] */
    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        int w;
        Pair pair;
        Pair pair2;
        long j;
        int i = this.j;
        int i2 = 6;
        boolean z = true;
        Object[] objArr = 0;
        Unit unit = Unit.a;
        Object obj = this.k;
        switch (i) {
            case 0:
                ModifierLocalManager modifierLocalManager = (ModifierLocalManager) obj;
                modifierLocalManager.f = false;
                HashSet hashSet = new HashSet();
                MutableObjectList mutableObjectList = modifierLocalManager.d;
                if (mutableObjectList != null) {
                    Object[] objArr2 = mutableObjectList.a;
                    int i3 = mutableObjectList.b;
                    for (int i4 = 0; i4 < i3; i4++) {
                        LayoutNode layoutNode = (LayoutNode) objArr2[i4];
                        MutableObjectList mutableObjectList2 = modifierLocalManager.e;
                        if (mutableObjectList2 == null) {
                            mutableObjectList2 = new MutableObjectList();
                            modifierLocalManager.e = mutableObjectList2;
                        }
                        ModifierLocal modifierLocal = (ModifierLocal) mutableObjectList2.b(i4);
                        Modifier.Node node = layoutNode.O.f;
                        if (node.w) {
                            ModifierLocalManager.b(node, modifierLocal);
                        }
                    }
                    mutableObjectList.k();
                    MutableObjectList mutableObjectList3 = modifierLocalManager.e;
                    if (mutableObjectList3 != null) {
                        mutableObjectList3.k();
                    }
                }
                MutableObjectList mutableObjectList4 = modifierLocalManager.b;
                if (mutableObjectList4 != null) {
                    Object[] objArr3 = mutableObjectList4.a;
                    int i5 = mutableObjectList4.b;
                    for (int i6 = 0; i6 < i5; i6++) {
                        BackwardsCompatNode backwardsCompatNode = (BackwardsCompatNode) objArr3[i6];
                        MutableObjectList mutableObjectList5 = modifierLocalManager.c;
                        if (mutableObjectList5 == null) {
                            mutableObjectList5 = new MutableObjectList();
                            modifierLocalManager.c = mutableObjectList5;
                        }
                        ModifierLocal modifierLocal2 = (ModifierLocal) mutableObjectList5.b(i6);
                        if (backwardsCompatNode.w) {
                            ModifierLocalManager.b(backwardsCompatNode, modifierLocal2);
                        }
                    }
                    mutableObjectList4.k();
                    MutableObjectList mutableObjectList6 = modifierLocalManager.c;
                    if (mutableObjectList6 != null) {
                        mutableObjectList6.k();
                    }
                }
                Iterator it = hashSet.iterator();
                while (it.hasNext()) {
                    ((BackwardsCompatNode) it.next()).a1();
                }
                return unit;
            case 1:
                ?? obj2 = new Object();
                obj2.a = (String) obj;
                return new NavDeepLink(obj2.a);
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                return ((NestedScrollDispatcher) obj).d;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                return ((NestedScrollNode) obj).Y0();
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                return (DiskCache) ((RealImageLoader) obj).a.e.getValue();
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                return Boolean.valueOf(PopupLayout.m((PopupLayout) obj));
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                RectManager rectManager = (RectManager) obj;
                rectManager.i = null;
                Trace.beginSection("OnPositionedDispatch");
                try {
                    rectManager.a();
                    return unit;
                } finally {
                    Trace.endSection();
                }
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                PeerPickerViewModel peerPickerViewModel = (PeerPickerViewModel) obj;
                peerPickerViewModel.a.b.b(new AbandonSearch(peerPickerViewModel.b, ByteString.m));
                return unit;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                ResourceFileSystem resourceFileSystem = (ResourceFileSystem) obj;
                ClassLoader classLoader = resourceFileSystem.l;
                FileSystem fileSystem = resourceFileSystem.m;
                Enumeration<URL> resources = classLoader.getResources("");
                resources.getClass();
                ArrayList<URL> list = Collections.list(resources);
                list.getClass();
                ArrayList arrayList = new ArrayList();
                for (URL url : list) {
                    url.getClass();
                    if (!Intrinsics.a(url.getProtocol(), "file")) {
                        pair2 = null;
                    } else {
                        String str = Path.k;
                        String file = new File(url.toURI()).toString();
                        file.getClass();
                        pair2 = new Pair(fileSystem, Path.Companion.a(file));
                    }
                    if (pair2 != null) {
                        arrayList.add(pair2);
                    }
                }
                Enumeration<URL> resources2 = classLoader.getResources("META-INF/MANIFEST.MF");
                resources2.getClass();
                ArrayList<URL> list2 = Collections.list(resources2);
                list2.getClass();
                ArrayList arrayList2 = new ArrayList();
                for (URL url2 : list2) {
                    url2.getClass();
                    String url3 = url2.toString();
                    url3.getClass();
                    if (!StringsKt.J(url3, "jar:file:", false) || (w = StringsKt.w(url3, 6, "!")) == -1) {
                        pair = null;
                    } else {
                        String str2 = Path.k;
                        String file2 = new File(URI.create(url3.substring(4, w))).toString();
                        file2.getClass();
                        pair = new Pair(ZipFilesKt.c(Path.Companion.a(file2), fileSystem, new Object()), ResourceFileSystem.o);
                    }
                    if (pair != null) {
                        arrayList2.add(pair);
                    }
                }
                return CollectionsKt.F(arrayList, arrayList2);
            case KeyModifiers.a /* 9 */:
                return new ProtoWriter((Buffer) ((ReverseProtoWriter) obj).f.getValue());
            case KeyModifiers.b /* 10 */:
                SavedStateRegistryController savedStateRegistryController = ((SaveableStateRegistryWrapper) obj).l;
                if (savedStateRegistryController == null) {
                    return null;
                }
                Bundle a = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
                savedStateRegistryController.c(a);
                if (a.isEmpty()) {
                    return null;
                }
                return a;
            case 11:
                return SavedStateHandleSupport.c((ViewModelStoreOwner) obj);
            case KeyModifiers.c /* 12 */:
                SavedStateRegistryOwner savedStateRegistryOwner = (SavedStateRegistryOwner) obj;
                savedStateRegistryOwner.g().a(new Recreator(savedStateRegistryOwner));
                return unit;
            case 13:
                SeekableTransitionState seekableTransitionState = (SeekableTransitionState) obj;
                Transition transition = seekableTransitionState.e;
                if (transition != null) {
                    j = ((Number) transition.m.getValue()).longValue();
                } else {
                    j = 0;
                }
                seekableTransitionState.f = j;
                return unit;
            case 14:
                return obj;
            case 15:
                SerialDescriptorImpl serialDescriptorImpl = (SerialDescriptorImpl) obj;
                return Integer.valueOf(PluginGeneratedSerialDescriptorKt.a(serialDescriptorImpl, serialDescriptorImpl.j));
            case 16:
                ShaderBrushSpan shaderBrushSpan = (ShaderBrushSpan) obj;
                int i7 = ShaderBrushSpan.n;
                MutableState mutableState = shaderBrushSpan.l;
                if (((Size) ((SnapshotMutableStateImpl) mutableState).getValue()).a == 9205357640488583168L || Size.e(((Size) ((SnapshotMutableStateImpl) mutableState).getValue()).a)) {
                    return null;
                }
                return shaderBrushSpan.j.b(((Size) ((SnapshotMutableStateImpl) mutableState).getValue()).a);
            case 17:
                TextAnnotatedStringNode textAnnotatedStringNode = (TextAnnotatedStringNode) obj;
                textAnnotatedStringNode.M = null;
                SemanticsModifierNodeKt.b(textAnnotatedStringNode);
                LayoutModifierNodeKt.a(textAnnotatedStringNode);
                DrawModifierNodeKt.a(textAnnotatedStringNode);
                return Boolean.TRUE;
            case 18:
                TextClassificationHelperApi28.a(((RemoteAction) obj).getActionIntent());
                return unit;
            case 19:
                TextContextMenuToolbarHandlerNode textContextMenuToolbarHandlerNode = (TextContextMenuToolbarHandlerNode) obj;
                if (textContextMenuToolbarHandlerNode.w) {
                    return TextContextMenuModifierKt.a(textContextMenuToolbarHandlerNode);
                }
                return TextContextMenuData.b;
            case 20:
                return new BaseInputConnection(((TextInputServiceAndroid) obj).a, false);
            case 21:
                return new IntOffset(((IntRect) obj).b());
            case 22:
                TextStringSimpleNode textStringSimpleNode = (TextStringSimpleNode) obj;
                textStringSimpleNode.I = null;
                SemanticsModifierNodeKt.b(textStringSimpleNode);
                LayoutModifierNodeKt.a(textStringSimpleNode);
                DrawModifierNodeKt.a(textStringSimpleNode);
                return Boolean.TRUE;
            case 23:
                TransferChoosePeerViewModel transferChoosePeerViewModel = (TransferChoosePeerViewModel) obj;
                Transfer transfer = (Transfer) transferChoosePeerViewModel.c.j.a();
                if (transfer != null && transfer.w == Transfer.Status.n) {
                    transferChoosePeerViewModel.a.b.b(new TransferRemoveRequested(i2, transferChoosePeerViewModel.b, (boolean) (objArr == true ? 1 : 0)));
                }
                return unit;
            case 24:
                ((SnapshotMutableStateImpl) ((VectorPainter) obj).r).setValue(unit);
                return unit;
            case 25:
                WorkContinuationImpl workContinuationImpl = (WorkContinuationImpl) obj;
                String str3 = WorkContinuationImpl.h;
                String str4 = EnqueueRunnable.a;
                WorkManagerImpl workManagerImpl = workContinuationImpl.a;
                HashSet hashSet2 = new HashSet();
                hashSet2.addAll(workContinuationImpl.d);
                HashSet b = WorkContinuationImpl.b(workContinuationImpl);
                Iterator it2 = hashSet2.iterator();
                while (true) {
                    if (it2.hasNext()) {
                        if (b.contains((String) it2.next())) {
                        }
                    } else {
                        hashSet2.removeAll(workContinuationImpl.d);
                        z = false;
                    }
                }
                if (!z) {
                    WorkDatabase workDatabase = workManagerImpl.c;
                    Configuration configuration = workManagerImpl.b;
                    workDatabase.b();
                    try {
                        EnqueueUtilsKt.a(workDatabase, configuration, workContinuationImpl);
                        boolean a2 = EnqueueRunnable.a(workContinuationImpl);
                        workDatabase.o();
                        if (a2) {
                            Schedulers.b(configuration, workManagerImpl.c, workManagerImpl.e);
                        }
                        return unit;
                    } finally {
                        workDatabase.l();
                    }
                }
                throw new IllegalStateException("WorkContinuation has cycles (" + workContinuationImpl + ")");
            case 26:
                WorkManagerImpl workManagerImpl2 = (WorkManagerImpl) obj;
                WorkDatabase workDatabase2 = workManagerImpl2.c;
                Context context = workManagerImpl2.a;
                String str5 = SystemJobScheduler.o;
                if (Build.VERSION.SDK_INT >= 34) {
                    JobSchedulerExtKt.a(context).cancelAll();
                }
                JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
                ArrayList d = SystemJobScheduler.d(context, jobScheduler);
                if (d != null && !d.isEmpty()) {
                    Iterator it3 = d.iterator();
                    while (it3.hasNext()) {
                        SystemJobScheduler.b(jobScheduler, ((JobInfo) it3.next()).getId());
                    }
                }
                ((Number) DBUtil.b(((WorkSpecDao_Impl) workDatabase2.v()).a, false, true, new ii(20))).intValue();
                Schedulers.b(workManagerImpl2.b, workDatabase2, workManagerImpl2.e);
                return unit;
            default:
                return ((Worker) obj).c();
        }
    }
}
