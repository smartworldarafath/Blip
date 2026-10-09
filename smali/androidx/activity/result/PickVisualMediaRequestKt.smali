.class public abstract Landroidx/activity/result/PickVisualMediaRequestKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# direct methods
.method public static a(Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;)Landroidx/activity/result/PickVisualMediaRequest;
    .locals 3

    .line 1
    invoke-static {}, Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia$Companion;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Landroidx/activity/result/PickVisualMediaRequest$Builder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v2, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageAndVideo;->a:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$ImageAndVideo;

    .line 11
    .line 12
    iput-object v2, v1, Landroidx/activity/result/PickVisualMediaRequest$Builder;->a:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;

    .line 13
    .line 14
    invoke-static {}, Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia$Companion;->a()I

    .line 15
    .line 16
    .line 17
    iput-object p0, v1, Landroidx/activity/result/PickVisualMediaRequest$Builder;->a:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;

    .line 18
    .line 19
    iput v0, v1, Landroidx/activity/result/PickVisualMediaRequest$Builder;->b:I

    .line 20
    .line 21
    sget-object p0, Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab$PhotosTab;->a:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab$PhotosTab;

    .line 22
    .line 23
    iput-object p0, v1, Landroidx/activity/result/PickVisualMediaRequest$Builder;->c:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;

    .line 24
    .line 25
    new-instance v0, Landroidx/activity/result/PickVisualMediaRequest;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v2, v0, Landroidx/activity/result/PickVisualMediaRequest;->a:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;

    .line 31
    .line 32
    invoke-static {}, Landroidx/activity/result/contract/ActivityResultContracts$PickMultipleVisualMedia$Companion;->a()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    iput v2, v0, Landroidx/activity/result/PickVisualMediaRequest;->b:I

    .line 37
    .line 38
    iput-object p0, v0, Landroidx/activity/result/PickVisualMediaRequest;->c:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;

    .line 39
    .line 40
    iget-object p0, v1, Landroidx/activity/result/PickVisualMediaRequest$Builder;->a:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    iput-object p0, v0, Landroidx/activity/result/PickVisualMediaRequest;->a:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$VisualMediaType;

    .line 46
    .line 47
    iget p0, v1, Landroidx/activity/result/PickVisualMediaRequest$Builder;->b:I

    .line 48
    .line 49
    iput p0, v0, Landroidx/activity/result/PickVisualMediaRequest;->b:I

    .line 50
    .line 51
    iget-object p0, v1, Landroidx/activity/result/PickVisualMediaRequest$Builder;->c:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;

    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    iput-object p0, v0, Landroidx/activity/result/PickVisualMediaRequest;->c:Landroidx/activity/result/contract/ActivityResultContracts$PickVisualMedia$DefaultTab;

    .line 57
    .line 58
    return-object v0
.end method
