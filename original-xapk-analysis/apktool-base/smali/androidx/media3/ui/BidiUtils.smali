.class abstract Landroidx/media3/ui/BidiUtils;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Lcom/google/common/base/Splitter;

.field public static final b:Lcom/google/common/base/Splitter;

.field public static final c:Lcom/google/common/base/Joiner;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "\n"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/common/base/Splitter;->b(Ljava/lang/String;)Lcom/google/common/base/Splitter;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sput-object v1, Landroidx/media3/ui/BidiUtils;->a:Lcom/google/common/base/Splitter;

    .line 8
    .line 9
    const-string v1, "\r\n"

    .line 10
    .line 11
    invoke-static {v1}, Lcom/google/common/base/Splitter;->b(Ljava/lang/String;)Lcom/google/common/base/Splitter;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sput-object v1, Landroidx/media3/ui/BidiUtils;->b:Lcom/google/common/base/Splitter;

    .line 16
    .line 17
    new-instance v1, Lcom/google/common/base/Joiner;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Lcom/google/common/base/Joiner;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sput-object v1, Landroidx/media3/ui/BidiUtils;->c:Lcom/google/common/base/Joiner;

    .line 23
    .line 24
    return-void
.end method
