.class public final Lio/github/vinceglb/filekit/dialogs/FileKitPickerState$Cancelled;
.super Lio/github/vinceglb/filekit/dialogs/FileKitPickerState;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/vinceglb/filekit/dialogs/FileKitPickerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cancelled"
.end annotation


# static fields
.field public static final a:Lio/github/vinceglb/filekit/dialogs/FileKitPickerState$Cancelled;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/github/vinceglb/filekit/dialogs/FileKitPickerState$Cancelled;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/github/vinceglb/filekit/dialogs/FileKitPickerState$Cancelled;->a:Lio/github/vinceglb/filekit/dialogs/FileKitPickerState$Cancelled;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of p0, p1, Lio/github/vinceglb/filekit/dialogs/FileKitPickerState$Cancelled;

    .line 6
    .line 7
    if-nez p0, :cond_1

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    const p0, -0x46c01772

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "Cancelled"

    .line 2
    .line 3
    return-object p0
.end method
