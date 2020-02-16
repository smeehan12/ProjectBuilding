#include "TH1F.h"
#include "TFile.h"

#include "myFunctions.h"

int main() {
  myInfo("Starting");

  TFile *f = new TFile("fout.root","RECREATE");

  TH1F *h = new TH1F("h","h",1000,0,10);

  for(int i=0; i<10000; i++){
    h->Fill(GetTriangle(4,2));
  }

  h->Write();
  f->Close();

  return(0);
}