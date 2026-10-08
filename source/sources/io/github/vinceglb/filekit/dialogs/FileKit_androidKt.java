package io.github.vinceglb.filekit.dialogs;

import android.content.ActivityNotFoundException;
import android.net.Uri;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.PickVisualMediaRequest;
import androidx.activity.result.PickVisualMediaRequestKt;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.activity.result.contract.ActivityResultContracts$PickVisualMedia;
import defpackage.k8;
import defpackage.u2;
import io.github.vinceglb.filekit.PlatformFile;
import io.github.vinceglb.filekit.PlatformFile_androidKt;
import io.github.vinceglb.filekit.dialogs.FileKitType;
import io.github.vinceglb.filekit.dialogs.PickerMode;
import io.sentry.d;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class FileKit_androidKt {
    public static final Object a(ActivityResultRegistry activityResultRegistry, ActivityResultContract activityResultContract, Object obj, ContinuationImpl continuationImpl) {
        DefaultScheduler defaultScheduler = Dispatchers.a;
        return BuildersKt.e(MainDispatcherLoader.a.o, new FileKit_androidKt$awaitActivityResult$2(activityResultRegistry, activityResultContract, obj, null), continuationImpl);
    }

    /* JADX WARN: Code restructure failed: missing block: B:57:0x0081, code lost:
    
        if (r14 == r1) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00a1, code lost:
    
        if (r14 == r1) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0111, code lost:
    
        if (r14 == r1) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0150, code lost:
    
        if (r14 == r1) goto L83;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object b(FileKitType fileKitType, PickerMode pickerMode, ContinuationImpl continuationImpl) {
        FileKit_androidKt$callFilePicker$1 fileKit_androidKt$callFilePicker$1;
        int i;
        PickVisualMediaRequest a;
        if (continuationImpl instanceof FileKit_androidKt$callFilePicker$1) {
            FileKit_androidKt$callFilePicker$1 fileKit_androidKt$callFilePicker$12 = (FileKit_androidKt$callFilePicker$1) continuationImpl;
            int i2 = fileKit_androidKt$callFilePicker$12.n;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                fileKit_androidKt$callFilePicker$12.n = i2 - Integer.MIN_VALUE;
                fileKit_androidKt$callFilePicker$1 = fileKit_androidKt$callFilePicker$12;
                Object obj = fileKit_androidKt$callFilePicker$1.m;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = fileKit_androidKt$callFilePicker$1.n;
                if (i == 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i != 3) {
                                if (i == 4) {
                                    ResultKt.b(obj);
                                    List list = (List) obj;
                                    if (list != null) {
                                        ArrayList arrayList = new ArrayList(CollectionsKt.m(list, 10));
                                        Iterator it = list.iterator();
                                        while (it.hasNext()) {
                                            arrayList.add(PlatformFile_androidKt.a((Uri) it.next()));
                                        }
                                        return arrayList;
                                    }
                                } else {
                                    u2.l("call to 'resume' before 'invoke' with coroutine");
                                    return null;
                                }
                            } else {
                                ResultKt.b(obj);
                                Uri uri = (Uri) obj;
                                if (uri != null) {
                                    return CollectionsKt.B(PlatformFile_androidKt.a(uri));
                                }
                            }
                        } else {
                            ResultKt.b(obj);
                            List list2 = (List) obj;
                            if (list2 != null) {
                                ArrayList arrayList2 = new ArrayList(CollectionsKt.m(list2, 10));
                                Iterator it2 = list2.iterator();
                                while (it2.hasNext()) {
                                    arrayList2.add(PlatformFile_androidKt.a((Uri) it2.next()));
                                }
                                return arrayList2;
                            }
                        }
                    } else {
                        ResultKt.b(obj);
                        Uri uri2 = (Uri) obj;
                        if (uri2 != null) {
                            return CollectionsKt.B(PlatformFile_androidKt.a(uri2));
                        }
                    }
                } else {
                    ResultKt.b(obj);
                    ActivityResultRegistry activityResultRegistry = (ActivityResultRegistry) FileKitDialog.a.get();
                    if (activityResultRegistry != null) {
                        FileKitType.Image image = FileKitType.Image.a;
                        boolean a2 = Intrinsics.a(fileKitType, image);
                        FileKitType.ImageAndVideo imageAndVideo = FileKitType.ImageAndVideo.a;
                        FileKitType.Video video = FileKitType.Video.a;
                        if (!a2 && !Intrinsics.a(fileKitType, video) && !Intrinsics.a(fileKitType, imageAndVideo)) {
                            if (fileKitType instanceof FileKitType.File) {
                                if (pickerMode instanceof PickerMode.Single) {
                                    FileKit_androidKt$callFilePicker$8 fileKit_androidKt$callFilePicker$8 = new FileKit_androidKt$callFilePicker$8(activityResultRegistry, fileKitType, null);
                                    fileKit_androidKt$callFilePicker$1.n = 3;
                                    obj = e(fileKit_androidKt$callFilePicker$8, null, fileKit_androidKt$callFilePicker$1);
                                } else if (pickerMode instanceof PickerMode.Multiple) {
                                    FileKit_androidKt$callFilePicker$10 fileKit_androidKt$callFilePicker$10 = new FileKit_androidKt$callFilePicker$10(activityResultRegistry, fileKitType, null);
                                    fileKit_androidKt$callFilePicker$1.n = 4;
                                    obj = e(fileKit_androidKt$callFilePicker$10, null, fileKit_androidKt$callFilePicker$1);
                                } else {
                                    k8.e();
                                    return null;
                                }
                            } else {
                                k8.e();
                                return null;
                            }
                        } else {
                            if (Intrinsics.a(fileKitType, image)) {
                                a = PickVisualMediaRequestKt.a(ActivityResultContracts$PickVisualMedia.ImageOnly.a);
                            } else if (Intrinsics.a(fileKitType, video)) {
                                a = PickVisualMediaRequestKt.a(ActivityResultContracts$PickVisualMedia.VideoOnly.a);
                            } else if (Intrinsics.a(fileKitType, imageAndVideo)) {
                                a = PickVisualMediaRequestKt.a(ActivityResultContracts$PickVisualMedia.ImageAndVideo.a);
                            } else {
                                k8.e();
                                return null;
                            }
                            if (!(pickerMode instanceof PickerMode.Single)) {
                                if (pickerMode instanceof PickerMode.Multiple) {
                                    FileKit_androidKt$callFilePicker$5 fileKit_androidKt$callFilePicker$5 = new FileKit_androidKt$callFilePicker$5(pickerMode, activityResultRegistry, a, null);
                                    FileKit_androidKt$callFilePicker$6 fileKit_androidKt$callFilePicker$6 = new FileKit_androidKt$callFilePicker$6(activityResultRegistry, fileKitType, null);
                                    fileKit_androidKt$callFilePicker$1.n = 2;
                                    obj = e(fileKit_androidKt$callFilePicker$5, fileKit_androidKt$callFilePicker$6, fileKit_androidKt$callFilePicker$1);
                                } else {
                                    d.e(pickerMode, "Unsupported mode: ");
                                    return null;
                                }
                            } else {
                                FileKit_androidKt$callFilePicker$2 fileKit_androidKt$callFilePicker$2 = new FileKit_androidKt$callFilePicker$2(activityResultRegistry, a, null);
                                FileKit_androidKt$callFilePicker$3 fileKit_androidKt$callFilePicker$3 = new FileKit_androidKt$callFilePicker$3(activityResultRegistry, fileKitType, null);
                                fileKit_androidKt$callFilePicker$1.n = 1;
                                obj = e(fileKit_androidKt$callFilePicker$2, fileKit_androidKt$callFilePicker$3, fileKit_androidKt$callFilePicker$1);
                            }
                        }
                        return coroutineSingletons;
                    }
                    throw new Exception("FileKit not initialized on Android. Please call FileKit.init(activity) first.");
                }
                return null;
            }
        }
        fileKit_androidKt$callFilePicker$1 = new ContinuationImpl(continuationImpl);
        Object obj2 = fileKit_androidKt$callFilePicker$1.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = fileKit_androidKt$callFilePicker$1.n;
        if (i == 0) {
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0070 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object, androidx.activity.result.contract.ActivityResultContract] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object c(PlatformFile platformFile, ContinuationImpl continuationImpl) {
        FileKit_androidKt$openDirectoryPicker$1 fileKit_androidKt$openDirectoryPicker$1;
        int i;
        Uri uri;
        String str;
        String str2;
        Uri uri2;
        if (continuationImpl instanceof FileKit_androidKt$openDirectoryPicker$1) {
            FileKit_androidKt$openDirectoryPicker$1 fileKit_androidKt$openDirectoryPicker$12 = (FileKit_androidKt$openDirectoryPicker$1) continuationImpl;
            int i2 = fileKit_androidKt$openDirectoryPicker$12.p;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                fileKit_androidKt$openDirectoryPicker$12.p = i2 - Integer.MIN_VALUE;
                fileKit_androidKt$openDirectoryPicker$1 = fileKit_androidKt$openDirectoryPicker$12;
                Object obj = fileKit_androidKt$openDirectoryPicker$1.o;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = fileKit_androidKt$openDirectoryPicker$1.p;
                if (i == 0) {
                    if (i == 1) {
                        str = fileKit_androidKt$openDirectoryPicker$1.n;
                        str2 = fileKit_androidKt$openDirectoryPicker$1.m;
                        try {
                            ResultKt.b(obj);
                        } catch (ActivityNotFoundException e) {
                            e = e;
                            throw new FileKitDialogException(e, str2);
                        } catch (SecurityException e2) {
                            e = e2;
                            throw new FileKitDialogException(e, str);
                        }
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    ActivityResultRegistry activityResultRegistry = (ActivityResultRegistry) FileKitDialog.a.get();
                    if (activityResultRegistry != null) {
                        ?? obj2 = new Object();
                        if (platformFile != null) {
                            uri = Uri.parse(PlatformFile_androidKt.c(platformFile));
                        } else {
                            uri = null;
                        }
                        try {
                            fileKit_androidKt$openDirectoryPicker$1.m = "No Android activity is available to open the directory picker.";
                            fileKit_androidKt$openDirectoryPicker$1.n = "Android rejected the directory picker launch.";
                            fileKit_androidKt$openDirectoryPicker$1.p = 1;
                            obj = a(activityResultRegistry, obj2, uri, fileKit_androidKt$openDirectoryPicker$1);
                            if (obj != coroutineSingletons) {
                                str2 = "No Android activity is available to open the directory picker.";
                                str = "Android rejected the directory picker launch.";
                            } else {
                                return coroutineSingletons;
                            }
                        } catch (ActivityNotFoundException e3) {
                            e = e3;
                            str2 = "No Android activity is available to open the directory picker.";
                            throw new FileKitDialogException(e, str2);
                        } catch (SecurityException e4) {
                            e = e4;
                            str = "Android rejected the directory picker launch.";
                            throw new FileKitDialogException(e, str);
                        }
                    } else {
                        throw new Exception("FileKit not initialized on Android. Please call FileKit.init(activity) first.");
                    }
                }
                uri2 = (Uri) obj;
                if (uri2 != null) {
                    return null;
                }
                return PlatformFile_androidKt.a(uri2);
            }
        }
        fileKit_androidKt$openDirectoryPicker$1 = new ContinuationImpl(continuationImpl);
        Object obj3 = fileKit_androidKt$openDirectoryPicker$1.o;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = fileKit_androidKt$openDirectoryPicker$1.p;
        if (i == 0) {
        }
        uri2 = (Uri) obj3;
        if (uri2 != null) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object d(FileKitType fileKitType, PickerMode pickerMode, ContinuationImpl continuationImpl) {
        FileKit_androidKt$platformOpenFilePicker$1 fileKit_androidKt$platformOpenFilePicker$1;
        int i;
        if (continuationImpl instanceof FileKit_androidKt$platformOpenFilePicker$1) {
            FileKit_androidKt$platformOpenFilePicker$1 fileKit_androidKt$platformOpenFilePicker$12 = (FileKit_androidKt$platformOpenFilePicker$1) continuationImpl;
            int i2 = fileKit_androidKt$platformOpenFilePicker$12.n;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                fileKit_androidKt$platformOpenFilePicker$12.n = i2 - Integer.MIN_VALUE;
                fileKit_androidKt$platformOpenFilePicker$1 = fileKit_androidKt$platformOpenFilePicker$12;
                Object obj = fileKit_androidKt$platformOpenFilePicker$1.m;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = fileKit_androidKt$platformOpenFilePicker$1.n;
                if (i == 0) {
                    if (i == 1) {
                        ResultKt.b(obj);
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    fileKit_androidKt$platformOpenFilePicker$1.n = 1;
                    obj = b(fileKitType, pickerMode, fileKit_androidKt$platformOpenFilePicker$1);
                    if (obj == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                int i3 = UtilsKt.a;
                return FlowKt.g(new UtilsKt$toPickerStateFlow$1((List) obj, null));
            }
        }
        fileKit_androidKt$platformOpenFilePicker$1 = new ContinuationImpl(continuationImpl);
        Object obj2 = fileKit_androidKt$platformOpenFilePicker$1.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = fileKit_androidKt$platformOpenFilePicker$1.n;
        if (i == 0) {
        }
        int i32 = UtilsKt.a;
        return FlowKt.g(new UtilsKt$toPickerStateFlow$1((List) obj2, null));
    }

    /* JADX WARN: Can't wrap try/catch for region: R(3:(2:3|(4:5|6|7|(1:(1:(2:11|12)(2:14|15))(3:16|17|18))(3:19|20|(1:23)(1:22))))|7|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0044, code lost:
    
        r8 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005e, code lost:
    
        if (r9 != 0) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0060, code lost:
    
        r0.m = null;
        r0.o = 2;
        r8 = r9.b(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0068, code lost:
    
        if (r8 == r1) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x006b, code lost:
    
        return r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x007d, code lost:
    
        throw new java.lang.Exception("No Android activity is available to open the file picker.", r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0042, code lost:
    
        r8 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x005d, code lost:
    
        throw new java.lang.Exception("Android rejected the file picker launch.", r8);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0027  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object e(Function1 function1, Function1 function12, ContinuationImpl continuationImpl) {
        FileKit_androidKt$runPickerLaunchWithActivityNotFoundFallback$1 fileKit_androidKt$runPickerLaunchWithActivityNotFoundFallback$1;
        int i;
        try {
            if (continuationImpl instanceof FileKit_androidKt$runPickerLaunchWithActivityNotFoundFallback$1) {
                FileKit_androidKt$runPickerLaunchWithActivityNotFoundFallback$1 fileKit_androidKt$runPickerLaunchWithActivityNotFoundFallback$12 = (FileKit_androidKt$runPickerLaunchWithActivityNotFoundFallback$1) continuationImpl;
                int i2 = fileKit_androidKt$runPickerLaunchWithActivityNotFoundFallback$12.o;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    fileKit_androidKt$runPickerLaunchWithActivityNotFoundFallback$12.o = i2 - Integer.MIN_VALUE;
                    fileKit_androidKt$runPickerLaunchWithActivityNotFoundFallback$1 = fileKit_androidKt$runPickerLaunchWithActivityNotFoundFallback$12;
                    Object obj = fileKit_androidKt$runPickerLaunchWithActivityNotFoundFallback$1.n;
                    Object obj2 = CoroutineSingletons.j;
                    i = fileKit_androidKt$runPickerLaunchWithActivityNotFoundFallback$1.o;
                    if (i == 0) {
                        if (i != 1) {
                            if (i == 2) {
                                ResultKt.b(obj);
                                return obj;
                            }
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        ResultKt.b(obj);
                        return obj;
                    }
                    ResultKt.b(obj);
                    fileKit_androidKt$runPickerLaunchWithActivityNotFoundFallback$1.m = (SuspendLambda) function12;
                    fileKit_androidKt$runPickerLaunchWithActivityNotFoundFallback$1.o = 1;
                    Object b = function1.b(fileKit_androidKt$runPickerLaunchWithActivityNotFoundFallback$1);
                    if (b != obj2) {
                        return b;
                    }
                    return obj2;
                }
            }
            if (i == 0) {
            }
        } catch (ActivityNotFoundException e) {
            throw new Exception("No Android activity is available to open the file picker.", e);
        } catch (SecurityException e2) {
            throw new Exception("Android rejected the file picker launch.", e2);
        }
        fileKit_androidKt$runPickerLaunchWithActivityNotFoundFallback$1 = new ContinuationImpl(continuationImpl);
        Object obj3 = fileKit_androidKt$runPickerLaunchWithActivityNotFoundFallback$1.n;
        Object obj22 = CoroutineSingletons.j;
        i = fileKit_androidKt$runPickerLaunchWithActivityNotFoundFallback$1.o;
    }

    public static final String[] f(FileKitType fileKitType) {
        fileKitType.getClass();
        if (fileKitType.equals(FileKitType.Image.a)) {
            return new String[]{"image/*"};
        }
        if (fileKitType.equals(FileKitType.Video.a)) {
            return new String[]{"video/*"};
        }
        if (fileKitType.equals(FileKitType.ImageAndVideo.a)) {
            return new String[]{"image/*", "video/*"};
        }
        if (fileKitType instanceof FileKitType.File) {
            u2.l("File type does not use visual fallback MIME types");
            return null;
        }
        k8.e();
        return null;
    }
}
