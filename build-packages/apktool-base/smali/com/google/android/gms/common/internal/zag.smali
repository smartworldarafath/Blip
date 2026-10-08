.class final Lcom/google/android/gms/common/internal/zag;
.super Lcom/google/android/gms/common/internal/zaj;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# instance fields
.field public final synthetic a:Landroid/content/Intent;

.field public final synthetic b:Lcom/google/android/gms/common/api/GoogleApiActivity;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Lcom/google/android/gms/common/api/GoogleApiActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/common/internal/zag;->a:Landroid/content/Intent;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/common/internal/zag;->b:Lcom/google/android/gms/common/api/GoogleApiActivity;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zag;->a:Landroid/content/Intent;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/gms/common/internal/zag;->b:Lcom/google/android/gms/common/api/GoogleApiActivity;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method
