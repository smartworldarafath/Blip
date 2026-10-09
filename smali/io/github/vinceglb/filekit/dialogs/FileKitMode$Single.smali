.class public final Lio/github/vinceglb/filekit/dialogs/FileKitMode$Single;
.super Lio/github/vinceglb/filekit/dialogs/FileKitMode;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/vinceglb/filekit/dialogs/FileKitMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Single"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/github/vinceglb/filekit/dialogs/FileKitMode<",
        "Lio/github/vinceglb/filekit/PlatformFile;",
        "Lio/github/vinceglb/filekit/PlatformFile;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lio/github/vinceglb/filekit/dialogs/FileKitMode$Single;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/github/vinceglb/filekit/dialogs/FileKitMode$Single;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/github/vinceglb/filekit/dialogs/FileKitMode$Single;->a:Lio/github/vinceglb/filekit/dialogs/FileKitMode$Single;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Lio/github/vinceglb/filekit/dialogs/PickerMode;
    .locals 0

    .line 1
    sget-object p0, Lio/github/vinceglb/filekit/dialogs/PickerMode$Single;->a:Lio/github/vinceglb/filekit/dialogs/PickerMode$Single;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lio/github/vinceglb/filekit/dialogs/FileKitMode$Single$parseResult$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lio/github/vinceglb/filekit/dialogs/FileKitMode$Single$parseResult$1;

    .line 7
    .line 8
    iget v1, v0, Lio/github/vinceglb/filekit/dialogs/FileKitMode$Single$parseResult$1;->o:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lio/github/vinceglb/filekit/dialogs/FileKitMode$Single$parseResult$1;->o:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lio/github/vinceglb/filekit/dialogs/FileKitMode$Single$parseResult$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lio/github/vinceglb/filekit/dialogs/FileKitMode$Single$parseResult$1;-><init>(Lio/github/vinceglb/filekit/dialogs/FileKitMode$Single;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p0, v0, Lio/github/vinceglb/filekit/dialogs/FileKitMode$Single$parseResult$1;->m:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object p2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->j:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    .line 29
    iget v1, v0, Lio/github/vinceglb/filekit/dialogs/FileKitMode$Single$parseResult$1;->o:I

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    const/4 v3, 0x1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    if-ne v1, v3, :cond_1

    .line 36
    .line 37
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 42
    .line 43
    invoke-static {p0}, Lu2;->l(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v2

    .line 47
    :cond_2
    invoke-static {p0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iput v3, v0, Lio/github/vinceglb/filekit/dialogs/FileKitMode$Single$parseResult$1;->o:I

    .line 51
    .line 52
    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->q(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    if-ne p0, p2, :cond_3

    .line 57
    .line 58
    return-object p2

    .line 59
    :cond_3
    :goto_1
    check-cast p0, Lio/github/vinceglb/filekit/dialogs/FileKitPickerState;

    .line 60
    .line 61
    instance-of p1, p0, Lio/github/vinceglb/filekit/dialogs/FileKitPickerState$Completed;

    .line 62
    .line 63
    if-eqz p1, :cond_4

    .line 64
    .line 65
    check-cast p0, Lio/github/vinceglb/filekit/dialogs/FileKitPickerState$Completed;

    .line 66
    .line 67
    iget-object p0, p0, Lio/github/vinceglb/filekit/dialogs/FileKitPickerState$Completed;->a:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p0, Ljava/util/List;

    .line 70
    .line 71
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->t(Ljava/util/List;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    check-cast p0, Lio/github/vinceglb/filekit/PlatformFile;

    .line 76
    .line 77
    return-object p0

    .line 78
    :cond_4
    return-object v2
.end method

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
    instance-of p0, p1, Lio/github/vinceglb/filekit/dialogs/FileKitMode$Single;

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
    const p0, -0x7ee32805

    .line 2
    .line 3
    .line 4
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "Single"

    .line 2
    .line 3
    return-object p0
.end method
