.class abstract Landroidx/media3/common/util/ParsableByteArray$IsRunningInTestHolder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/util/ParsableByteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IsRunningInTestHolder"
.end annotation


# static fields
.field public static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Landroidx/media3/common/util/ParsableByteArray;->d:[C

    .line 2
    .line 3
    const-string v0, "robolectric"

    .line 4
    .line 5
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/google/common/base/Ascii;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-class v0, Landroidx/media3/common/util/ParsableByteArray;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const-string v1, "androidx/test/espresso/Espresso.class"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    const-string v1, "org/junit/runner/Runner.class"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    const-string v1, "androidx/test/platform/app/InstrumentationRegistry.class"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    const/4 v0, 0x0

    .line 55
    :goto_1
    sput-boolean v0, Landroidx/media3/common/util/ParsableByteArray$IsRunningInTestHolder;->a:Z

    .line 56
    .line 57
    return-void
.end method
