package net.blip.shared;

import defpackage.k8;
import defpackage.u2;
import io.github.vinceglb.filekit.PlatformFile;
import io.github.vinceglb.filekit.PlatformFile_androidKt;
import io.github.vinceglb.filekit.dialogs.FileKitKt;
import io.github.vinceglb.filekit.dialogs.FileKitMode;
import io.github.vinceglb.filekit.dialogs.FileKitType;
import io.github.vinceglb.filekit.dialogs.FileKit_androidKt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import net.blip.libblip.Logger;
import net.blip.libblip.LoggerKt;
import net.blip.shared.ContentPicker$ContentType;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ContentPickerKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object a(ContentPicker$Options contentPicker$Options, ContinuationImpl continuationImpl) {
        ContentPickerKt$launch$1 contentPickerKt$launch$1;
        int i;
        try {
            if (continuationImpl instanceof ContentPickerKt$launch$1) {
                ContentPickerKt$launch$1 contentPickerKt$launch$12 = (ContentPickerKt$launch$1) continuationImpl;
                int i2 = contentPickerKt$launch$12.n;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    contentPickerKt$launch$12.n = i2 - Integer.MIN_VALUE;
                    contentPickerKt$launch$1 = contentPickerKt$launch$12;
                    Object obj = contentPickerKt$launch$1.m;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                    i = contentPickerKt$launch$1.n;
                    if (i == 0) {
                        if (i == 1) {
                            ResultKt.b(obj);
                        } else {
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                    } else {
                        ResultKt.b(obj);
                        contentPickerKt$launch$1.n = 1;
                        obj = b(contentPicker$Options, contentPickerKt$launch$1);
                        if (obj == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    }
                    return (List) obj;
                }
            }
            if (i == 0) {
            }
            return (List) obj;
        } catch (CancellationException e) {
            throw e;
        } catch (Exception e2) {
            Logger logger = LoggerKt.a;
            Pair[] pairArr = {new Pair("err", e2)};
            logger.getClass();
            Logger.e("content picker failed", pairArr);
            return null;
        }
        contentPickerKt$launch$1 = new ContinuationImpl(continuationImpl);
        Object obj2 = contentPickerKt$launch$1.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = contentPickerKt$launch$1.n;
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x0057, code lost:
    
        if (r8 == r1) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00ae, code lost:
    
        if (r8 == r1) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00bc, code lost:
    
        if (r8 == r1) goto L54;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /* JADX WARN: Type inference failed for: r7v3, types: [io.github.vinceglb.filekit.dialogs.FileKitMode, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object b(ContentPicker$Options contentPicker$Options, ContinuationImpl continuationImpl) {
        ContentPickerKt$launchOrThrow$1 contentPickerKt$launchOrThrow$1;
        int i;
        FileKitType fileKitType;
        PlatformFile platformFile;
        List list;
        if (continuationImpl instanceof ContentPickerKt$launchOrThrow$1) {
            ContentPickerKt$launchOrThrow$1 contentPickerKt$launchOrThrow$12 = (ContentPickerKt$launchOrThrow$1) continuationImpl;
            int i2 = contentPickerKt$launchOrThrow$12.n;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                contentPickerKt$launchOrThrow$12.n = i2 - Integer.MIN_VALUE;
                contentPickerKt$launchOrThrow$1 = contentPickerKt$launchOrThrow$12;
                Object obj = contentPickerKt$launchOrThrow$1.m;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = contentPickerKt$launchOrThrow$1.n;
                if (i == 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i == 3) {
                                ResultKt.b(obj);
                                PlatformFile platformFile2 = (PlatformFile) obj;
                                if (platformFile2 != null) {
                                    list = CollectionsKt.B(platformFile2);
                                } else {
                                    list = null;
                                }
                                if (list != null) {
                                    ArrayList arrayList = new ArrayList();
                                    Iterator it = list.iterator();
                                    while (it.hasNext()) {
                                        arrayList.add(PlatformFile_androidKt.c((PlatformFile) it.next()));
                                    }
                                    return arrayList;
                                }
                                return null;
                            }
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        ResultKt.b(obj);
                        list = (List) obj;
                        if (list != null) {
                        }
                        return null;
                    }
                    ResultKt.b(obj);
                    PlatformFile platformFile3 = (PlatformFile) obj;
                    if (platformFile3 != null) {
                        return CollectionsKt.B(PlatformFile_androidKt.c(platformFile3));
                    }
                    return null;
                }
                ResultKt.b(obj);
                ContentPicker$ContentType contentPicker$ContentType = contentPicker$Options.b;
                boolean z = contentPicker$ContentType instanceof ContentPicker$ContentType.Directory;
                if (z) {
                    String str = contentPicker$Options.d;
                    if (str != null) {
                        platformFile = PlatformFile_androidKt.b(str);
                    } else {
                        platformFile = null;
                    }
                    contentPickerKt$launchOrThrow$1.n = 1;
                    obj = FileKit_androidKt.c(platformFile, contentPickerKt$launchOrThrow$1);
                } else {
                    if (contentPicker$ContentType instanceof ContentPicker$ContentType.File) {
                        if (((ContentPicker$ContentType.File) contentPicker$ContentType).a.isEmpty()) {
                            fileKitType = new FileKitType.File(null);
                        } else {
                            fileKitType = new FileKitType.File(CollectionsKt.a0(((ContentPicker$ContentType.File) contentPicker$Options.b).a));
                        }
                    } else if (contentPicker$ContentType instanceof ContentPicker$ContentType.Image) {
                        fileKitType = FileKitType.Image.a;
                    } else if (contentPicker$ContentType instanceof ContentPicker$ContentType.Video) {
                        fileKitType = FileKitType.Video.a;
                    } else if (contentPicker$ContentType instanceof ContentPicker$ContentType.ImageAndVideo) {
                        fileKitType = FileKitType.ImageAndVideo.a;
                    } else {
                        if (z) {
                            io.sentry.d.d();
                            return null;
                        }
                        k8.e();
                        return null;
                    }
                    if (contentPicker$Options.c) {
                        ?? obj2 = new Object();
                        contentPickerKt$launchOrThrow$1.n = 2;
                        obj = FileKitKt.a(fileKitType, obj2, contentPickerKt$launchOrThrow$1);
                    } else {
                        contentPickerKt$launchOrThrow$1.n = 3;
                        obj = FileKitKt.a(fileKitType, FileKitMode.Single.a, contentPickerKt$launchOrThrow$1);
                    }
                }
                return coroutineSingletons;
            }
        }
        contentPickerKt$launchOrThrow$1 = new ContinuationImpl(continuationImpl);
        Object obj3 = contentPickerKt$launchOrThrow$1.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = contentPickerKt$launchOrThrow$1.n;
        if (i == 0) {
        }
    }
}
