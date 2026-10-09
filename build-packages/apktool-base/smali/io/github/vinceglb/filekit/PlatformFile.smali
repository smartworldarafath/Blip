.class public final Lio/github/vinceglb/filekit/PlatformFile;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/vinceglb/filekit/PlatformFile$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/github/vinceglb/filekit/PlatformFile$Companion;


# instance fields
.field public final a:Lio/github/vinceglb/filekit/AndroidFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/github/vinceglb/filekit/PlatformFile$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/github/vinceglb/filekit/PlatformFile;->Companion:Lio/github/vinceglb/filekit/PlatformFile$Companion;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lio/github/vinceglb/filekit/AndroidFile;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/github/vinceglb/filekit/PlatformFile;->a:Lio/github/vinceglb/filekit/AndroidFile;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    goto :goto_1

    .line 4
    :cond_0
    instance-of v0, p1, Lio/github/vinceglb/filekit/PlatformFile;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_1
    check-cast p1, Lio/github/vinceglb/filekit/PlatformFile;

    .line 10
    .line 11
    iget-object p0, p0, Lio/github/vinceglb/filekit/PlatformFile;->a:Lio/github/vinceglb/filekit/AndroidFile;

    .line 12
    .line 13
    iget-object p1, p1, Lio/github/vinceglb/filekit/PlatformFile;->a:Lio/github/vinceglb/filekit/AndroidFile;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_2

    .line 20
    .line 21
    :goto_0
    const/4 p0, 0x0

    .line 22
    return p0

    .line 23
    :cond_2
    :goto_1
    const/4 p0, 0x1

    .line 24
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lio/github/vinceglb/filekit/PlatformFile;->a:Lio/github/vinceglb/filekit/AndroidFile;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/github/vinceglb/filekit/PlatformFile_androidKt;->c(Lio/github/vinceglb/filekit/PlatformFile;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
