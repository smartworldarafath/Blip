.class Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$5$1;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic j:Landroid/widget/AutoCompleteTextView;

.field public final synthetic k:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$5;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$5;Landroid/widget/AutoCompleteTextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$5$1;->k:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$5;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$5$1;->j:Landroid/widget/AutoCompleteTextView;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$5$1;->k:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$5;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$5;->a:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->d:Landroid/text/TextWatcher;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$5$1;->j:Landroid/widget/AutoCompleteTextView;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
