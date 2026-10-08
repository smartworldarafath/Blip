.class public final synthetic Landroidx/compose/ui/contentcapture/b;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

.field public final synthetic k:Landroid/util/LongSparseArray;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;Landroid/util/LongSparseArray;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/contentcapture/b;->j:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/contentcapture/b;->k:Landroid/util/LongSparseArray;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/contentcapture/b;->j:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/compose/ui/contentcapture/b;->k:Landroid/util/LongSparseArray;

    .line 4
    .line 5
    invoke-static {v0, p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$ViewTranslationHelperMethods;->a(Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;Landroid/util/LongSparseArray;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
